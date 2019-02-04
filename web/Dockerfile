FROM microsoft/dotnet:sdk
COPY . /opt/code
WORKDIR /opt/code
RUN ["dotnet", "publish", "--configuration", "Release", "--output", "/opt/app"]

FROM microsoft/dotnet:aspnetcore-runtime 
COPY --from=0 /opt/app /opt/app
WORKDIR /opt/app
EXPOSE 80
CMD ["dotnet", "crm.dll", "--urls", "http://0.0.0.0:80"]
