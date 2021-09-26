FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /app
COPY . /app
RUN dotnet publish -o bin

FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS run
WORKDIR /app
COPY --from=build /app/bin .
EXPOSE 80
ENTRYPOINT exec dotnet bar.dll --urls http://0.0.0.0
