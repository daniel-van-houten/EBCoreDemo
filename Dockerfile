FROM microsoft/dotnet:1.1.1-sdk

# Copy our code from the "/src/MyWebApi" folder to the "/app" folder in our container
WORKDIR /app
COPY ./EBCoreDemo .

# Expose port 80 for the Web API traffic
ENV ASPNETCORE_URLS http://+:80

EXPOSE 80
 
# Restore the necessary packages
RUN dotnet restore
 
# Build and run the dotnet application from within the container
ENTRYPOINT ["dotnet", "run"]