# Projeto One for All

# Sobre
Este projeto foi desenvolvido durante o Módulo 3 - Back-End do curso de Desenvolvimento Web da Trybe.

Nele,foi criado um banco de dados MySQL à partir de tabelas do Excel. A tabela foi normalizada na terceira forma normal, e suas informações podem ser acessadas através de queries utilizando SQL.

Os arquivos desenvolvidos por mim são os desafios de 1 a 10. Os demais foram desenvolvidos pelo time da Trybe.

## Descrição dos desafios:
- desafio1.sql:banco de dados (DB) SpotfyClone;
- desafio2.sql: exibe a quantidade de canções, artistas e ábuns presentes no DB;
- desafio3.sql: exibe a quantidade de músicas ouvidas e total de minutos por pessoa usuária;
- desafio4.sql: exibe quais pessoas usuárias estavam ativas a partir de 2021, com base em seu histórico de reprodução;
- desafio5.sql: exibe as músicas mais tocadas;
- desafio6.sql: exibe o faturamento da empresa (por planos, faturamento médio e total);
- desafio7.sql: exibe uma relação de álbuns por artista, ordenada pela quantidade de seguidores que possui;
- desafio8.sql: exibe uma relação de álbuns por um artista específico, ordenados alfabeticamente;
- desafio9.sql: exibe a quantidade de músicas que estão presentes atualmente no histórico de reprodução de uma pessoa usuária específica;
- desafio10.sql: exibe o nome e quantas vezes cada canção foi tocada por pessoas usuárias do plano gratuito ou pessoal;

## Tecnologias usadas

> Back-End
Docker, docker-compose, SQL, Node.js

## Instalando Dependências

### É preciso que você tenha o Docker Engine instalado em sua máquina (https://www.docker.com/get-started/)

1. Clone este repositório em su máquina, e em seguida suba o container:
```bash
docker-compose up -d
``` 
- O docker-compose.yml mapeia a porta padrão do mysql do container para a porta 3307;
- Serão inicializados dois cointeiners: one_for_all e  one_for_all_db.

2. Dentro do diretório do projeto, execute o conteiner:
```bash
docker exec -it store_manager bash
``` 
- Ele dá acesso ao terminal interativo do container criado pelo compose;
- As credencias de acesso ao banco de dados estão definidas no arquivo docker-compose.yml.

3. Agora instale as dependências dentro do container:
```bash
npm install
``` 
