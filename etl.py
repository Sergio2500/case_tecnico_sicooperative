import mysql.connector
import pandas as pd
import os

# Perguntando ao usuário onde salvar o CSV
output_dir = input("Qual diretório deseja alocar o flat file? ").strip()

# Se o diretório não existir, ele é criado abaixo
if not os.path.exists(output_dir):
    os.makedirs(output_dir)

# Nome do flat file a ser gerado
output_file = os.path.join(output_dir, "dados_sicooperative.csv")

# Conexão com oo MySQL
try:
    conn = mysql.connector.connect(
        host="localhost",
        user="root",
        password="senha_usuario", # Necessário parametrizar senha
        database="sicooperative"
    )
    cursor = conn.cursor()

    # Query para selecionar os 11 campos desejados
    query = """
        SELECT 
            a.nome AS nome_associado,
            a.sobrenome AS sobrenome_associado,
            a.idade AS idade_associado,
            m.vir_transacao AS vlr_transacao_movimento,
            m.des_transacao AS des_transacao_movimento,
            m.data_movimento,
            c.num_cartao AS numero_cartao,
            c.nom_impresso AS nome_impresso_cartao,
            c.id_conta,
            co.tipo AS tipo_conta,
            co.data_criacao AS data_criacao_conta
        FROM movimento m
        JOIN cartao c ON m.id_cartao = c.id
        JOIN conta co ON c.id_conta = co.id
        JOIN associado a ON co.id_associado = a.id;
    """

    # Executando a query e carrega os dados em um DataFrame
    cursor.execute(query)
    data = cursor.fetchall()
    colunas = [desc[0] for desc in cursor.description]
    df = pd.DataFrame(data, columns=colunas)

    # Salvando o DataFrame em CSV
    df.to_csv(output_file, sep=';', index=False, encoding='utf-8')

    print(f"Arquivo salvo com sucesso em: {output_file}")

except mysql.connector.Error as e:
    print(f"Erro ao conectar ao MySQL: {e}")

finally:
    if 'cursor' in locals():
        cursor.close()
    if 'conn' in locals() and conn.is_connected():
        conn.close()
