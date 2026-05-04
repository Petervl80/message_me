# MessageMe 💬

> Aplicação web de chat em tempo real construída com **Ruby on Rails**, **ActionCable** e **Semantic UI**.

---

## ✨ Visão Geral

O **MessageMe** permite que múltiplos usuários troquem mensagens instantaneamente em uma sala de bate-papo global, sem a necessidade de recarregar a página. A comunicação é feita via **WebSockets** com ActionCable, garantindo uma experiência fluida e em tempo real.

---

## 🚀 Funcionalidades

| Funcionalidade | Descrição |
|---|---|
| 🔐 **Autenticação** | Sistema seguro de Login e Logout com a gem `bcrypt` |
| ⚡ **Chat em Tempo Real** | Envio e recebimento instantâneo via WebSockets (ActionCable) |
| 🎨 **Interface Responsiva** | Estilização moderna com Semantic UI |
| 📜 **Auto-scroll** | Rolagem automática para a mensagem mais recente |
| 📦 **Limitação de Mensagens** | Exibe as últimas 20 mensagens para manter a performance |

---

## 🛠 Tecnologias Utilizadas

- **Linguagem:** [Ruby 2.7.8](https://www.ruby-lang.org/)
- **Framework:** [Ruby on Rails ~> 5.2.4](https://rubyonrails.org/)
- **Banco de Dados:** SQLite3 (Desenvolvimento e Teste)
- **Frontend:** [Semantic UI (Sass)](https://semantic-ui.com/), jQuery, HTML5, CSS3
- **WebSockets:** ActionCable (com adaptador Redis pré-configurado para produção)
- **Servidor:** Puma

---

## 📋 Pré-requisitos

Antes de iniciar, certifique-se de ter instalado:

- **Ruby 2.7.8** — recomendado usar [RVM](https://rvm.io/) ou [rbenv](https://github.com/rbenv/rbenv)
- **Bundler** — `gem install bundler`
- **SQLite3**
- **Node.js / Yarn** — para o pipeline de assets

---

## ⚙️ Instalação e Execução

### 1. Clone o repositório

```bash
git clone <url-do-repositorio>
cd message_me
```

### 2. Instale as dependências

```bash
bundle install
```

### 3. Configure o banco de dados

```bash
rails db:setup
```

> **Nota:** O arquivo `db/seeds.rb` criará automaticamente usuários de teste: **Pedro, Arya, Frodo, Gandalf, Sam e Legolas**. A senha padrão de todos é `password`.

### 4. Inicie o servidor

```bash
rails server
```

### 5. Acesse a aplicação

Abra o navegador em: **[http://localhost:3000](http://localhost:3000)**

---

## 🧪 Usuários de Teste

Para testar a aplicação, utilize qualquer uma das contas abaixo:

| Usuário | Senha |
|---|---|
| Pedro | `password` |
| Arya | `password` |
| Frodo | `password` |
| Gandalf | `password` |
| Sam | `password` |
| Legolas | `password` |

> 💡 **Dica:** Abra a aplicação em duas abas ou navegadores diferentes com usuários distintos para testar a comunicação em tempo real!

---

## 📁 Estrutura Principal do Código

```
app/
├── models/
│   ├── user.rb          # Regras de negócio do usuário (1 usuário → muitas mensagens)
│   └── message.rb       # Modelo de mensagem e seus relacionamentos
│
├── controllers/
│   └── messages_controller.rb   # Criação de mensagem + broadcast via ActionCable
│
├── channels/
│   └── chatroom_channel.rb      # Canal WebSocket para transmissão aos clientes
│
└── assets/
    ├── javascripts/channels/
    │   └── chatroom.coffee       # Escuta eventos WebSocket e atualiza o DOM
    └── stylesheets/
        └── custom.css.scss       # CSS customizado + importação do Semantic UI
```