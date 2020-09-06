# Builder image
FROM mcr.microsoft.com/dotnet/core/sdk:3.1-alpine as builder

WORKDIR /app

# Copy fsproj and restore as distinct layers
COPY *.fsproj ./
RUN dotnet restore

# Copy everything else and build
COPY . ./
RUN dotnet publish -c Release -o out

# Runtime image
FROM mcr.microsoft.com/dotnet/core/sdk:3.1-alpine
WORKDIR /app
COPY --from=builder /app/out .
CMD ["pwsh", "/app/Script.ps1"]