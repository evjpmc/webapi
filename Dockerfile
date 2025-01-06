# Build runtime image
FROM mcr.microsoft.com/dotnet/sdk:8.0
WORKDIR /app
COPY . ./
#RUN dotnet restore
RUN dotnet build
ENTRYPOINT ["dotnet", "/app/bin/Debug/net8.0/webapi.dll"]
