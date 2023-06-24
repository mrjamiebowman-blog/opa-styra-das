#See https://aka.ms/customizecontainer to learn how to customize your debug container and how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:8.0-preview AS base
WORKDIR /app
EXPOSE 80

FROM mcr.microsoft.com/dotnet/sdk:8.0-preview AS build
WORKDIR /src
COPY ["src/MrJB.OPA.StyraDas.API/MrJB.OPA.StyraDas.API.csproj", "src/MrJB.OPA.StyraDas.API/"]
RUN dotnet restore "src/MrJB.OPA.StyraDas.API/MrJB.OPA.StyraDas.API.csproj"
COPY . .
WORKDIR "/src/src/MrJB.OPA.StyraDas.API"
RUN dotnet build "MrJB.OPA.StyraDas.API.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "MrJB.OPA.StyraDas.API.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "MrJB.OPA.StyraDas.API.dll"]