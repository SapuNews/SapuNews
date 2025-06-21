#!/bin/bash

echo "🚀 Iniciando deploy do NTUME..."

# Verificar se o Docker está instalado
if ! command -v docker &> /dev/null; then
    echo "❌ Docker não está instalado. Por favor, instale o Docker primeiro."
    exit 1
fi

# Verificar se o Docker Compose está instalado
if ! command -v docker-compose &> /dev/null; then
    echo "❌ Docker Compose não está instalado. Por favor, instale o Docker Compose primeiro."
    exit 1
fi

# Parar containers existentes
echo "🛑 Parando containers existentes..."
docker-compose down

# Remover imagens antigas
echo "🧹 Removendo imagens antigas..."
docker-compose down --rmi all

# Construir e iniciar containers
echo "🔨 Construindo e iniciando containers..."
docker-compose up --build -d

# Aguardar um pouco para os serviços iniciarem
echo "⏳ Aguardando serviços iniciarem..."
sleep 10

# Verificar status dos containers
echo "📊 Status dos containers:"
docker-compose ps

echo "✅ Deploy concluído!"
echo ""
echo "🌐 Acesse a aplicação em:"
echo "   Frontend: http://localhost:3000"
echo "   Backend API: http://localhost:8000"
echo "   Documentação API: http://localhost:8000/docs"
echo ""
echo "📝 Para ver os logs:"
echo "   docker-compose logs -f"
echo ""
echo "🛑 Para parar:"
echo "   docker-compose down" 