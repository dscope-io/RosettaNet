# IC4J Camel Component sample calling the IC canister with RosettaNet document.

This application requires Java version 11.

In this sample we demonstrate how to use [Apache Camel] (https://camel.apache.org/) and [IC4J Camel Component] (https://github.com/ic4j/ic4j-camel) to invoke IC smart contract with RosettNet payload ([Request Purchase Order PIP3A4](https://www.gs1us.org/resources/rosettanet/standards-library/pip-directory/3a-purchase-orders)). 
Motoko types representing RosettaNet documents are generated from RosettaNet XML definition. The Java client then uses JAXB serializer and deserializer to convert JAXB object to Candid types and back.

The sample reads RosettaNet XML payload from XML file, converts XML to JAXB  and calls IC smart contract with Motoko payload. The smart contract then simply returns the same data back.

We used [Apache Karavan Visual Studio Code plug-in](https://github.com/apache/camel-karavan) to develop the Camel route, without needing to write any code.


### Deploy IC canister locally 
To run this sample start local IC instance in background using dfx tool

```
dfx start –background
```

Canister source code is in [main.mo](main.mo) file. Generated Motoko RosettaNet compatible types are in [PurchaseOrderRequestV02_05Types.mo](PurchaseOrderRequestV02_05Types.mo) file. To install the sample canister run dfx deploy command in this directory.

```
dfx deploy
```

Modify [application.properties](application.properties) file to set canister location and id.

```
ic.location=http://127.0.0.1:4943/
ic.canister=su63m-yyaaa-aaaaa-aaala-cai
```

Run Gradle [build](build.gradle). Modify Java version in the build file if higher than 1.8.

```
gradle build
```

Then run Camel application using [Jbang tool](https://www.jbang.dev/)

```
jbang -Dcamel.jbang.version=3.20.1 camel@apache/camel run rosettanetic.camel.yaml 
```

