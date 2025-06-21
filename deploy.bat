@echo off
echo 🚀 Iniciando deploy do NTUME...

REM Verificar se o Docker está instalado
docker --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Docker não está instalado. Por favor, instale o Docker primeiro.
    pause
    exit /b 1
)

REM Verificar se o Docker Compose está instalado
docker-compose --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Docker Compose não está instalado. Por favor, instale o Docker Compose primeiro.
    pause
    exit /b 1
)

REM Parar containers existentes
echo 🛑 Parando containers existentes...
docker-compose down

REM Remover imagens antigas
echo 🧹 Removendo imagens antigas...
docker-compose down --rmi all

REM Construir e iniciar containers
echo 🔨 Construindo e iniciando containers...
docker-compose up --build -d

REM Aguardar um pouco para os serviços iniciarem
echo ⏳ Aguardando serviços iniciarem...
timeout /t 10 /nobreak >nul

REM Verificar status dos containers
echo 📊 Status dos containers:
docker-compose ps

echo ✅ Deploy concluído!
echo.
echo 🌐 Acesse a aplicação em:
echo    Frontend: http://localhost:3000
echo    Backend API: http://localhost:8000
echo    Documentação API: http://localhost:8000/docs
echo.
echo 📝 Para ver os logs:
echo    docker-compose logs -f
echo.
echo 🛑 Para parar:
echo    docker-compose down
echo.
pause 