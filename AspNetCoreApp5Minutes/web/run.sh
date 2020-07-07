#!/bin/bash
cd /opt/code
dotnet ef database update
cd /opt/app
EXPORT ASPNETCORE_ENVIRONMENT=Development
dotnet crm.dll --urls http://0.0.0.0:80
