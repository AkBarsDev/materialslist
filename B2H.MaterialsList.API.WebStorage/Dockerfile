#See https://aka.ms/customizecontainer to learn how to customize your debug container and how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
USER app
WORKDIR /app
EXPOSE 8080
EXPOSE 8081

FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
ARG BUILD_CONFIGURATION=Release
WORKDIR /src
COPY ["B2H.MaterialsList.API.WebStorage/B2H.MaterialsList.API.WebStorage.csproj", "B2H.MaterialsList.API.WebStorage/"]
COPY ["B2H.MaterialsList.API.DataTransfer/B2H.MaterialsList.API.DataTransfer.csproj", "B2H.MaterialsList.API.DataTransfer/"]
COPY ["B2H.MaterialsList.Infrastructure.ApprovalManagement/B2H.MaterialsList.Infrastructure.ApprovalManagement.csproj", "B2H.MaterialsList.Infrastructure.ApprovalManagement/"]
COPY ["B2H.MaterialsList.Infrastructure.Repository/B2H.MaterialsList.Infrastructure.Repository.csproj", "B2H.MaterialsList.Infrastructure.Repository/"]
COPY ["B2H.MaterialsList.Core.Mapper/B2H.MaterialsList.Core.Mapper.csproj", "B2H.MaterialsList.Core.Mapper/"]
COPY ["B2H.MaterialsList.Core/B2H.MaterialsList.Core.csproj", "B2H.MaterialsList.Core/"]
RUN dotnet restore "./B2H.MaterialsList.API.WebStorage/B2H.MaterialsList.API.WebStorage.csproj"
COPY . .
WORKDIR "/src/B2H.MaterialsList.API.WebStorage"
RUN dotnet build "./B2H.MaterialsList.API.WebStorage.csproj" -c $BUILD_CONFIGURATION -o /app/build

FROM build AS publish
ARG BUILD_CONFIGURATION=Release
RUN dotnet publish "./B2H.MaterialsList.API.WebStorage.csproj" -c $BUILD_CONFIGURATION -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "B2H.MaterialsList.API.WebStorage.dll"]