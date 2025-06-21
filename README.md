# 🚀 NTUME - Plataforma de Conectividade Moçambicana

NTUME é uma plataforma inovadora que conecta vendedores, compradores e taxistas em Moçambique, facilitando o comércio local e a entrega de produtos.

## 🌟 Funcionalidades Principais

### 👥 Sistema de Usuários
- **Cadastro e Login**: Sistema completo de autenticação JWT
- **Roles Específicos**: Comprador, Vendedor, Taxista, Admin, Gestores
- **Perfil Avançado**: Foto de perfil, descrição, seguidores
- **Sistema de Seguidores**: Compradores podem seguir vendedores favoritos
- **Classificação e Reputação**: Sistema de avaliações por estrelas
- **Controle de Atividade**: Monitoramento de usuários ativos/inativos

### 🛒 Gestão de Produtos
- **Catálogo Completo**: Produtos com categorias, preços e descrições
- **Controle de Estoque**: Gestão automática de quantidade disponível
- **Produtos em Destaque**: Sistema de prateleira para melhores vendedores
- **Busca Avançada**: Filtros por categoria, preço e termo
- **Classificação de Produtos**: Avaliações específicas por produto

### 🚚 Sistema de Entregas
- **Cálculo Automático de Frete**: Baseado em distância e tipo de transporte
- **Rastreamento em Tempo Real**: Localização de taxistas e entregas
- **Múltiplos Tipos de Transporte**: Mota, carro, tchopela
- **Gestão de Rotas**: Otimização de trajetos
- **Status de Entrega**: Acompanhamento completo do processo

### 💰 Sistema Financeiro
- **Transações Seguras**: Controle completo de pagamentos
- **Comissões Automáticas**: Cálculo de taxas da plataforma
- **Valores Retidos**: Sistema de retenção por segurança
- **Relatórios Financeiros**: Dashboards detalhados
- **Múltiplos Métodos de Pagamento**: Cartão, dinheiro, transferência

### 🏢 Sistema Administrativo Avançado

#### 👑 Administrador Principal
- **Gestão de Gestores**: Criação e controle de gestores especializados
- **Visão Geral**: Dashboard com métricas da plataforma
- **Configurações Globais**: Controle de taxas e comissões

#### 💰 Gestor de Finanças
- **Dashboard Financeiro**: Transações, comissões, valores retidos
- **Gestão de Transações**: Aprovação, retenção, liberação
- **Configuração de Taxas**: Comissões e taxas de entrega
- **Relatórios Financeiros**: Exportação e análise de dados
- **Controle de Valores Retidos**: Liberação e gestão de fundos

#### 👥 Gestor de Recursos Humanos
- **Dashboard de Usuários**: Estatísticas de crescimento
- **Monitoramento de Atividade**: Usuários ativos/inativos
- **Sistema de Alertas**: Detecção de atividades suspeitas
- **Comunicações**: Envio de emails e notificações
- **Relatórios de Crescimento**: Análise de novos usuários

#### 📢 Gestor de Marketing
- **Gestão de Banners**: Upload e controle de publicidade
- **Sistema de Destaques**: Produtos e vendedores em evidência
- **Campanhas Promocionais**: Criação e gestão de promoções
- **Análise de Performance**: Métricas de marketing
- **Aprovação de Conteúdo**: Controle de qualidade

#### 📍 Gestor de Rastreamento
- **Mapa em Tempo Real**: Visualização de taxistas e entregas
- **Monitoramento de Entregas**: Status e localização
- **Gestão de Incidentes**: Reporte e resolução de problemas
- **Estatísticas de Entregas**: Taxa de sucesso e performance
- **Rastreamento de Rotas**: Otimização de trajetos

#### 🔧 Gestor de Manutenção
- **Monitoramento de Sistema**: Status de serviços
- **Gestão de Erros**: Reporte e resolução de bugs
- **Controle de Atualizações**: Versões e deploy
- **Sistema de Backups**: Backup automático e manual
- **Testes de Sistema**: Verificação de funcionamento

## 🛠️ Tecnologias Utilizadas

### Backend
- **FastAPI**: Framework web moderno e rápido
- **SQLAlchemy**: ORM para banco de dados
- **PostgreSQL**: Banco de dados relacional
- **JWT**: Autenticação segura
- **Pydantic**: Validação de dados
- **Alembic**: Migrações de banco de dados

### Frontend
- **React**: Biblioteca JavaScript para interfaces
- **TypeScript**: Tipagem estática
- **Vite**: Build tool rápido
- **Tailwind CSS**: Framework CSS utilitário
- **React Router**: Navegação entre páginas
- **Axios**: Cliente HTTP

## 🚀 Como Executar

### Pré-requisitos
- Python 3.8+
- Node.js 16+
- PostgreSQL
- Git

### Backend
```bash
cd backend
python -m venv venv
source venv/bin/activate  # Linux/Mac
# ou
venv\Scripts\activate  # Windows

pip install -r requirements.txt

# Configurar variáveis de ambiente
cp .env.example .env
# Editar .env com suas configurações

# Inicializar banco de dados
python init_db_with_data.py

# Executar servidor
uvicorn app.main:app --reload
```

### Frontend
```bash
cd frontend
npm install

# Executar em modo desenvolvimento
npm run dev

# Ou usar os scripts fornecidos
setup.bat  # Windows
# ou
./setup.sh  # Linux/Mac
```

## 📊 Estrutura do Projeto

```
PROJECTO NTUME/
├── backend/
│   ├── app/
│   │   ├── api/           # Endpoints da API
│   │   ├── models/        # Modelos do banco de dados
│   │   ├── schemas/       # Schemas Pydantic
│   │   ├── utils/         # Utilitários
│   │   └── main.py        # Aplicação principal
│   ├── init_db_with_data.py  # Script de inicialização
│   └── requirements.txt   # Dependências Python
├── frontend/
│   ├── src/
│   │   ├── components/    # Componentes React
│   │   ├── pages/         # Páginas da aplicação
│   │   ├── contexts/      # Contextos React
│   │   ├── services/      # Serviços de API
│   │   └── types/         # Tipos TypeScript
│   ├── package.json       # Dependências Node.js
│   └── vite.config.ts     # Configuração Vite
└── README.md
```

## 🔐 Credenciais de Acesso

Após executar `init_db_with_data.py`, você terá acesso aos seguintes usuários:

### Administradores
- **Admin Principal**: `bi=123456789`, `senha=admin123`
- **Gestor Finanças**: `bi=111111111`, `senha=gestor123`
- **Gestor RH**: `bi=222222222`, `senha=gestor123`
- **Gestor Marketing**: `bi=333333333`, `senha=gestor123`
- **Gestor Rastreamento**: `bi=444444444`, `senha=gestor123`
- **Gestor Manutenção**: `bi=555555555`, `senha=gestor123`

### Usuários Regulares
- **Vendedor**: `bi=666666666`, `senha=vendedor123`
- **Taxista**: `bi=999999999`, `senha=taxista123`
- **Comprador**: `bi=202020202`, `senha=comprador123`

## 📈 Funcionalidades Avançadas

### 🎯 Sistema de Prateleira
- Vendedores com mais de 20 produtos e boa reputação
- Destaque automático baseado em performance
- Sistema de seguidores para compradores

### 📊 Dashboards Especializados
- Cada gestor tem acesso a métricas específicas
- Relatórios em tempo real
- Exportação de dados para análise

### 🔄 Rastreamento em Tempo Real
- Localização GPS de taxistas
- Status de entregas atualizado
- Mapa interativo para gestores

### 💡 Sistema Inteligente
- Cálculo automático de frete por distância
- Alertas de estoque baixo
- Detecção de atividades suspeitas

## 🌐 Hospedagem e Deploy

### 📋 Pré-requisitos para Hospedagem
- **Git** instalado no seu computador
- **Conta no GitHub** criada
- **Docker** e **Docker Compose** (para deploy local)
- **Node.js** e **Python** (para desenvolvimento)

### 🚀 Passos para Hospedar no GitHub

#### 1. **Preparar o Repositório Local**
```bash
# Inicializar Git (se ainda não foi feito)
git init

# Adicionar todos os arquivos
git add .

# Fazer o primeiro commit
git commit -m "Initial commit: NTUME Platform"

# Adicionar repositório remoto (substitua USERNAME pelo seu usuário)
git remote add origin https://github.com/USERNAME/ntume-platform.git

# Enviar para o GitHub
git push -u origin main
```

#### 2. **Criar Repositório no GitHub**
1. Acesse [github.com](https://github.com)
2. Clique em **"New repository"**
3. Nome: `ntume-platform`
4. Descrição: `Plataforma de Conectividade Moçambicana`
5. Deixe público ou privado (sua escolha)
6. **NÃO** inicialize com README (já temos um)
7. Clique em **"Create repository"**

#### 3. **Configurar GitHub Actions (CI/CD)**
O projeto já inclui configuração automática de CI/CD em `.github/workflows/ci.yml` que:
- Testa o backend automaticamente
- Testa o frontend automaticamente
- Executa build de produção
- Cria previews para Pull Requests

#### 4. **Deploy Local com Docker**
```bash
# Usando o script de deploy (Linux/Mac)
chmod +x deploy.sh
./deploy.sh

# Ou no Windows
deploy.bat

# Ou manualmente
docker-compose up --build -d
```

#### 5. **Deploy em Produção**

##### Opção A: Vercel (Frontend) + Railway (Backend)
```bash
# Frontend no Vercel
cd frontend
npm run build
# Conecte o repositório ao Vercel

# Backend no Railway
# Conecte o repositório ao Railway
# Configure as variáveis de ambiente
```

##### Opção B: Heroku
```bash
# Instalar Heroku CLI
# Criar apps separados para frontend e backend
heroku create ntume-backend
heroku create ntume-frontend

# Deploy backend
cd backend
heroku git:remote -a ntume-backend
git push heroku main

# Deploy frontend
cd frontend
heroku git:remote -a ntume-frontend
git push heroku main
```

##### Opção C: DigitalOcean App Platform
1. Conecte seu repositório GitHub
2. Configure os serviços:
   - **Backend**: Python, porta 8000
   - **Frontend**: Node.js, porta 3000
   - **Database**: PostgreSQL

### 🔧 Configuração de Variáveis de Ambiente

#### Backend (Produção)
```env
DATABASE_URL=postgresql://user:pass@host:5432/dbname
SECRET_KEY=sua_chave_secreta_muito_segura
ALGORITHM=HS256
ACCESS_TOKEN_EXPIRE_MINUTES=30
HOST=0.0.0.0
PORT=8000
DEBUG=False
```

#### Frontend (Produção)
```env
REACT_APP_API_URL=https://seu-backend.herokuapp.com
```

### 📊 Monitoramento e Logs

#### GitHub Actions
- Acesse: `https://github.com/USERNAME/ntume-platform/actions`
- Veja o status dos testes e builds

#### Logs de Produção
```bash
# Vercel
vercel logs

# Heroku
heroku logs --tail

# Railway
railway logs

# Docker local
docker-compose logs -f
```

### 🔄 Atualizações e Deploy Contínuo

#### Desenvolvimento
```bash
# Fazer alterações
git add .
git commit -m "Nova funcionalidade"
git push origin main

# GitHub Actions fará deploy automático
```

#### Rollback
```bash
# Voltar para versão anterior
git revert HEAD
git push origin main
```

### 🛡️ Segurança

#### Checklist de Segurança
- [ ] Variáveis de ambiente configuradas
- [ ] Chaves secretas geradas
- [ ] CORS configurado
- [ ] Rate limiting ativo
- [ ] HTTPS habilitado
- [ ] Backups configurados

#### Gerar Chave Secreta
```python
import secrets
print(secrets.token_urlsafe(32))
```

### 📈 Métricas e Analytics

#### GitHub Insights
- Acesse: `https://github.com/USERNAME/ntume-platform/insights`
- Veja estatísticas de uso, contribuições, etc.

#### Monitoramento de Performance
- Configure **Sentry** para monitoramento de erros
- Use **Google Analytics** para métricas de usuários
- Configure **Uptime Robot** para monitoramento de disponibilidade

### 🆘 Troubleshooting

#### Problemas Comuns

**Erro: "Port already in use"**
```bash
# Encontrar processo usando a porta
lsof -i :8000
# Matar processo
kill -9 PID
```

**Erro: "Database connection failed"**
```bash
# Verificar se PostgreSQL está rodando
docker-compose ps
# Reiniciar serviços
docker-compose restart
```

**Erro: "Build failed"**
```bash
# Limpar cache
docker-compose down --rmi all
docker system prune -f
# Reconstruir
docker-compose up --build
```

### 📞 Suporte

Para problemas de deploy:
1. Verifique os logs: `docker-compose logs`
2. Consulte a documentação do provedor
3. Abra uma issue no GitHub
4. Entre em contato: suporte@ntume.co.mz

## 🤝 Contribuição

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo `LICENSE` para mais detalhes.

---

**NTUME** - Conectando Moçambique através da tecnologia! 🇲🇿 