# Indicando imagem base

# Use a imagem oficial da Microsoft para ASP.NET no Windows
FROM mcr.microsoft.com/dotnet/aspnet:6.0-nanoserver-1809

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos do seu projeto para o container
COPY . .

# Comando para iniciar a aplicação (ajuste o nome para o seu .dll)
ENTRYPOINT ["dotnet", "SuaAplicacao.dll"] FROM mcr.microsoft.com/dotnet/aspnet:6.0-nanoserver-1809

# Copia arquivos da aplicação web para pasta de publicação do Nginx
COPY . /usr/share/nginx/html/
COPY Web.config /etc/nginx/conf.d/Web.config
COPY index.html /usr/share/nginx/html/index.html
