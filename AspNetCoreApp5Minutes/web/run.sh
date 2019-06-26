#!/bin/bash
cd /opt/code
dotnet ef database update
cd /opt/app
dotnet crm.dll --urls http://0.0.0.0:80
