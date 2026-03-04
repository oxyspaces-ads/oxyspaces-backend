# 🏗️ Banco de Dados - **oxyspaces** (MySQL)

Este arquivo contém a **estrutura do banco de dados** do projeto **oxyspaces**.

📌 Ele está no formato **MySQL** e inclui:
- 🗂️ Tabelas  
- 🔗 Relacionamentos (Foreign Keys)  
- ⚡ Triggers e Procedures  
- 🏗️ Estrutura completa do banco  

⚠️ **Atenção:** O arquivo **não contém dados**, apenas a estrutura.

---

## 📂 Onde acessar o arquivo

O arquivo **`oxyspaces_estrutura.sql`** está disponível no **GitHub**:

- **Organização:** `oxyspaces-ads`  
- **Repositório:** `oxyspaces-backend`  

🔗 Link direto: [https://github.com/oxyspaces-ads/oxyspaces-backend](https://github.com/oxyspaces-ads/oxyspaces-backend)

---

## ✅ Usando MySQL Workbench (Recomendado)

Para facilitar, vamos usar o **MySQL Workbench**, que é uma interface gráfica simples.

- Baixe aqui: [MySQL Workbench](https://dev.mysql.com/downloads/workbench/)  
- Instale normalmente (Next → Next → Finish)

---

## 🚀 Passo a passo para importar o banco

### 1️⃣ Abrir o MySQL Workbench
- Conecte-se em **Local instance MySQL**

### 2️⃣ Abrir a tela de Importação
- Menu: **Server → Data Import**

### 3️⃣ Selecionar o arquivo
- Marque 🔘 *Import from Self-Contained File*  
- Clique **Browse** e selecione:

### 4️⃣ Criar o Schema DURANTE o Import (Recomendado ✅)
- Clique em **New** na seção **Default Target Schema**  
- Nomeie como: oxyspaces

- Clique em **OK** e selecione o schema criado  

> ⚠️ Criar o schema nesta etapa evita o erro: `No database selected`

### 5️⃣ Iniciar Importação
- Clique em **Start Import**  
- Aguarde até finalizar

---

## 🎉 Pronto!

O banco `oxyspaces` estará criado com todas as tabelas e relacionamentos.  
Agora você pode:

- 🔍 Visualizar as tabelas no painel esquerdo  
- 💻 Executar consultas SQL  
- 🔌 Conectar no seu projeto Spring Boot ou outro ambiente  

---

## ⚠️ Possíveis problemas
Se ocorrer algum erro, verifique:

- 🔹 Se o MySQL Server está rodando  
- 🔹 Se você selecionou corretamente o schema durante a importação  
- 🔹 Se escolheu o arquivo correto  

Em caso de dúvidas, consulte o professor.
