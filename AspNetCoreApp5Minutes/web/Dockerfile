FROM mcr.microsoft.com/dotnet/core/sdk:2.2
COPY . /opt/code
WORKDIR /opt/code
RUN dotnet publish --configuration Release --output /opt/app
WORKDIR /opt/app
EXPOSE 80

#TODO cd /opt/code
#TODO dotnet ef database update

ENTRYPOINT ["dotnet", "crm.dll"]



