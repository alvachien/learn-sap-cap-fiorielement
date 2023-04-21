# learn-sap-cap-fiorielement

A learning project for SAP Cap and Fiori Element

## Introudction

### Branch `cap-java`

This branch `cap-java` is used for CAP Java implementation.

### Official SAP Tutorial

The official SAP tutorial: [https://developers.sap.com/mission.cap-java-app.html](https://developers.sap.com/mission.cap-java-app.html)

## Steps

### Step 1. Initial the project

Run Maven commands to create project (with Java SDK 17):  

#### Using Maven archetype

```bash
mvn -B archetype:generate -DarchetypeArtifactId=cds-services-archetype \ 
-DarchetypeGroupId=com.sap.cds -DarchetypeVersion=RELEASE -DjdkVersion=17 \
-DgroupId=com.alvachien.learncap -DartifactId=demo-service -Dpackage=com.alvachien.learncap.demoservice
```

The command above only works with `bash`. For Powershell:

```Powershell
mvn org.apache.maven.plugins:maven-archetype-plugin:3.1.2:generate -DarchetypeArtifactId="cds-services-archetype" -DarchetypeGroupId="com.sap.cds" -DarchetypeVersion="1.32.0" -DgroupId="com.alvachien.learncap" -DartifactId="demo-service"
```

#### Using Visual Studio Code 

If the command is not working, using the `Command Palette...` in `Visual Studio Studio`, and input 'Java: Create Project',
- Select 'Maven: create from archetype'
- Enter archetype: `cds-service-archetype`

The Visual Studio Code will find out the suitable version.

#### Using `cds` comand

From the [official documentation](https://cap.cloud.sap/docs/java/getting-started#run-the-cap-java-maven-archetype) 

```cmd
cds init <PROJECT-ROOT> --add java
```

### Step 2. Create a service 

#### Step 2.1 defintion (.cds) under `srv` folder

Create a CDS file under certain folder:

```cds
service DemoService {
    entity DemoEntity {
        key ID: Integer;
        title: String(111);
        descr: String(1111);
    }
}
```

#### Step 2.2 Add service definition

Create a `handlers` folder near to `Application.java`.

```java
package com.alvachien.learncap.demoservice.handlers;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.sap.cds.services.cds.CdsCreateEventContext;
import com.sap.cds.services.cds.CdsReadEventContext;
import com.sap.cds.services.cds.CdsService;
import com.sap.cds.services.handler.EventHandler;
import com.sap.cds.services.handler.annotations.On;
import com.sap.cds.services.handler.annotations.ServiceName;

@Component
@ServiceName("DemoService")
public class DemoService {
    private Map<Object, Map<String, Object>> dataInMemory = new HashMap<>();

    @On(event = CdsService.EVENT_CREATE, entity = "DemoService.DemoEntity")
    public void onCreate(CdsCreateEventContext context) {
        context.getCqn().entries().forEach(e -> dataInMemory.put(e.get("ID"), e));
        context.setResult(context.getCqn().entries());
    }

    @On(event = CdsService.EVENT_READ, entity = "DemoService.DemoEntity")
    public void onRead(CdsReadEventContext context) {
        context.setResult(dataInMemory.values());
    }    
}
```

### Step 3. Maven install

```Powershell
mvn clean install
```

After the install, there are generated files added to `srv/src/resources/edmx` folder.


### Step 4. Run the service

```Powershell
mvn clean spring-boot:run
```

The default port is: 8080


## Enable Sqlite

```cmd
mvn spring-boot:run -D"spring-boot.run.profiles"=sqlite
```
