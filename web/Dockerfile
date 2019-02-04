FROM microsoft/dotnet:sdk
COPY . /opt/code
WORKDIR /opt/code
RUN ["dotnet", "publish", "--configuration", "Release", "--output", "/opt/app"]
EXPOSE 80
CMD ["/bin/bash", "run.sh"]
