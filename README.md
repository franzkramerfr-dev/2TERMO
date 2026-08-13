# 2º Termo ADS - SENAI

Repositório de conteúdo, atividades e materiais para o segundo termo do curso de Análise e Desenvolvimento de Sistemas (ADS) | PBE / PSOF / BCD / LIMA

## 📋 Descrição do Projeto

Este repositório contém exercícios práticos, projetos e materiais de aprendizagem desenvolvidos durante o segundo termo do curso de ADS na SENAI. Inclui atividades das disciplinas de Programação Backend, Linguagem de Markup, Banco de Dados e um projeto pessoal de "Diário de Gratidão".

## 🛠️ Tecnologias Utilizadas

- **JavaScript (Node.js)** - Programação Backend
- **HTML5** - Linguagem de Marcação
- **CSS3** - Estilização e Design
- **SQL** - Banco de Dados
- **readline-sync** - Biblioteca para leitura de entrada no terminal

## 📁 Estrutura de Pastas

```
2TERMO/
├── BCD/                                    # Disciplina: Banco de Dados Conceitual
│   └── Aula 2/
│       ├── conceitual_estacionamento.brM   # Diagrama conceitual (BrModelo)
│       └── estacionamento_senai.sql        # Scripts SQL para banco de dados
│
├── LIMA/                                   # Disciplina: Linguagem de Markup
│   ├── Aula 1/                             # Introdução ao HTML
│   │   ├── css.html                        # Exemplo de CSS
│   │   ├── desafio.html                    # Exercício desafio
│   │   └── index.html                      # Página inicial da aula
│   │
│   └── Aula 2/                             # HTML5 Avançado
│       ├── equipe.html                     # Página sobre equipe dev
│       ├── index.html                      # Conteúdo de aula
│       ├── projeto.zip                     # Projeto comprimido
│       └── projeto/                        # SmartCoffee - Sistema de Gerenciamento
│           ├── clientes.html               # Gestão de clientes
│           ├── delivery.html               # Serviço de delivery
│           ├── estoque.html                # Controle de estoque
│           ├── funcionarios.html           # Gestão de funcionários
│           ├── index.html                  # Página inicial do sistema
│           ├── pagamentos.html             # Processamento de pagamentos
│           ├── pedidos.html                # Gestão de pedidos
│           ├── produtos.html               # Catálogo de produtos
│           └── programa_fidelidade.html    # Programa de fidelidade
│
├── PBE/                                    # Disciplina: Programação Backend
│   └── backend1_aula_autonoma/             # Exercícios de Backend 1
│       ├── aula1.js                        # Hello World - Primeiros passos
│       ├── aula2.js                        # Variáveis (const e let)
│       ├── aula3.js                        # Operadores aritméticos
│       ├── aula4.js                        # Leitura de entrada do usuário
│       ├── atividade_final.js              # Atividade final - Relatório de aluno
│       ├── ext.js                          # Exercício extra
│       ├── package.json                    # Dependências do projeto
│       ├── package-lock.json               # Lock file das dependências
│       └── Aula/                           # Exercícios complementares
│           ├── array.js                    # Trabalho com arrays
│           ├── array2.js                   # Mais exemplos de arrays
│           ├── ex5.js                      # Exercício 5
│           └── texto_para_gerar_readme.txt # Instruções para gerar README
│
├── diario.html                             # Página do Diário de Gratidão
├── diario.css                              # Estilos do Diário
├── index.html                              # Página inicial (Diário de Gratidão)
├── style.css                               # Estilos gerais
└── README.md                               # Este arquivo
```

## 📚 Resumo dos Exercícios por Disciplina

### 🎓 BCD - Banco de Dados Conceitual (Aula 2)

- **Projeto: Sistema de Estacionamento SENAI**
  - Diagrama conceitual em Brmodelo
  - Criação de banco de dados e tabelas SQL
  - Estrutura de tabelas para Clientes e Veículos
  - Operações DDL (CREATE, DROP)

### 🎓 LIMA - Linguagem de Markup

#### Aula 1: Introdução ao HTML
- Estrutura básica de documentos HTML
- Título e apresentação pessoal
- Introdução a CSS e links
- Tags básicas (h1-h6, p, br, a)

#### Aula 2: HTML5 Avançado
- Tags de seção e títulos
- Formatação de texto (negrito, itálico, sublinhado)
- Abreviações e citações
- Código formatado (pre, code)
- Blockquotes e elementos highlight

#### Projeto: SmartCoffee
- Sistema de gestão de cafeteria
- Páginas: Clientes, Produtos, Funcionários, Pedidos, Pagamentos, Estoque, Delivery, Programa de Fidelidade
- Implementação de navegação com links
- Design responsivo com CSS

### 🎓 PBE - Programação Backend 1

#### Aula 1: Primeiros Passos
- Saída de dados com console.log()
- Entendimento do ambiente Node.js

#### Aula 2: Variáveis
- Declaração com const e let
- Tipos de dados (string, number, boolean)
- Exibição de variáveis no console

#### Aula 3: Operadores Aritméticos
- Soma, subtração, multiplicação, divisão
- Resto da divisão (módulo)
- Cálculo de média
- Operações comerciais (preço × quantidade)

#### Aula 4: Entrada de Dados
- Leitura de entrada do usuário com readline-sync
- Processamento de múltiplos dados
- Conversão de tipos (Number)

#### Atividade Final: Relatório de Aluno
- Entrada de dados do aluno (nome, disciplina, notas, faltas, etc.)
- Cálculo de média
- Geração de relatório formatado
- Uso avançado de readline-sync

### 📖 Projeto Adicional: Diário de Gratidão
- Página HTML explicando a prática do diário de gratidão
- Propósito: Reflexão diária e reconhecimento de privilégios
- Estilos CSS personalizados
- Questões reflexivas para o leitor

## 🚀 Como Executar os Arquivos com Node.js

### Pré-requisitos
- **Node.js** instalado (versão 12 ou superior)
- **npm** (gerenciador de pacotes)

### Instalação de Dependências

```bash
# Navegue até a pasta do projeto PBE
cd PBE/backend1_aula_autonoma

# Instale as dependências
npm install
```

### Executar Exercícios de JavaScript

```bash
# Executar aula1.js
node aula1.js

# Executar aula2.js
node aula2.js

# Executar aula3.js
node aula3.js

# Executar aula4.js (requer entrada do usuário)
node aula4.js

# Executar atividade final (requer entrada do usuário)
node atividade_final.js

# Executar exercícios da pasta Aula
node Aula/array.js
```

### Visualizar Arquivos HTML

```bash
# Abrir diretamente em um navegador web
# Navegue até o arquivo desejado e abra-o com seu navegador
# Exemplos:
# - LIMA/Aula 1/index.html
# - LIMA/Aula 2/projeto/index.html
# - index.html (Diário de Gratidão)

# Ou use um servidor local (opcionalmente)
# Com Python 3.x
python -m http.server

# Com Node.js (npm install -g http-server)
http-server
```

### Executar Scripts SQL

```bash
# O arquivo estacionamento_senai.sql pode ser executado em qualquer cliente SQL
# Exemplos:
# - MySQL Workbench
# - phpMyAdmin
# - SQL Server Management Studio
# - SQLite

# Com SQLite:
sqlite3 < BCD/Aula\ 2/estacionamento_senai.sql

# Com MySQL:
mysql -u usuario -p < BCD/Aula\ 2/estacionamento_senai.sql
```

## 📡 Instruções de Git

### Clonar o Repositório

```bash
git clone <URL_DO_REPOSITORIO>
cd 2TERMO
```

### Ver o Histórico de Commits

```bash
git log
git log --oneline
git log --graph --all --decorate
```

### Criar uma Nova Branch

```bash
git checkout -b nome-da-branch
```

### Adicionar Alterações

```bash
# Adicionar arquivos específicos
git add arquivo.js

# Adicionar todos os arquivos modificados
git add .

# Ver status dos arquivos
git status
```

### Fazer Commit

```bash
git commit -m "Descrição do que foi modificado"
```

### Enviar para o Repositório Remoto

```bash
git push origin nome-da-branch
```

### Atualizar o Repositório Local

```bash
git pull origin main
```

### Visualizar Branches

```bash
git branch              # Branches locais
git branch -a           # Todas as branches
```

### Merge de Branches

```bash
git checkout main
git merge nome-da-branch
```

## 👨‍💻 Autor

**Franz Kramer da Silva**

---

## 📝 Notas Importantes

- Todos os exercícios foram desenvolvidos como parte do curso de ADS na SENAI
- Os projetos servem como base de aprendizagem para disciplinas de programação, markup e banco de dados
- Para executar arquivos que requerem entrada de usuário (aula4.js, atividade_final.js), use Node.js diretamente no terminal
- Alguns exercícios utilizam a biblioteca `readline-sync` para melhor interação com o usuário

## 📞 Contato e Suporte

Para dúvidas ou sugestões sobre os exercícios, consulte a documentação das disciplinas ou entre em contato com os instrutores da SENAI.

---

*Última atualização: 2026*
