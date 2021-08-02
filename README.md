# Compile all required images
```
cd mqttpump
docker build --tag mqttpump .
cd ..

cd udpecho
docker build --tag fusionudpechoserver .
cd ..

cd ../fusionmqttdataservice
mvn compile jib:dockerBuild

cd ../fusionplcdataservice
mvn compile jib:dockerBuild

cd ../fusionscriptservice 
docker build --tag fusionscriptservice .

cd ../fusiongatewayapp
mvn compile jib:dockerBuild
```
