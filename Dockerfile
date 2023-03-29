FROM mcr.microsoft.com/dotnet/sdk:7.0.201-bullseye-slim-amd64

WORKDIR /usr/local/src

RUN apt-get update && apt-get dist-upgrade -y

RUN apt-get install -y openjdk-11-jre ca-certificates

RUN dotnet tool install --tool-path /dotnet-tools dotnet-sonarscanner --version 5.12.0

RUN dotnet tool install --tool-path /dotnet-tools dotnet-reportgenerator-globaltool --version 5.1.19

ENV PATH="/dotnet-tools:${PATH}"
