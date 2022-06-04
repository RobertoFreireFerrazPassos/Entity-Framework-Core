#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
EXPOSE 80

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src
COPY ["src/SchoolApi/SchoolApi.csproj", "src/SchoolApi/"]
RUN dotnet restore "src/SchoolApi/SchoolApi.csproj"
COPY . .
WORKDIR "/src/src/SchoolApi"
RUN dotnet build "SchoolApi.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "SchoolApi.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "SchoolApi.dll"]