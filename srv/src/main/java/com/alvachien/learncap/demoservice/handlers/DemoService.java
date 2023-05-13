package com.alvachien.learncap.demoservice.handlers;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.sap.cds.services.cds.CdsCreateEventContext;
import com.sap.cds.services.cds.CdsReadEventContext;
import com.sap.cds.services.cds.CqnService;
import com.sap.cds.services.handler.annotations.On;
import com.sap.cds.services.handler.annotations.ServiceName;

@Component
@ServiceName("DemoService")
public class DemoService {
    private Map<Object, Map<String, Object>> dataInMemory = new HashMap<>();

    @On(event = CqnService.EVENT_CREATE, entity = "DemoService.DemoEntity")
    public void onCreate(CdsCreateEventContext context) {
        context.getCqn().entries().forEach(e -> dataInMemory.put(e.get("ID"), e));
        context.setResult(context.getCqn().entries());
    }

    @On(event = CqnService.EVENT_READ, entity = "DemoService.DemoEntity")
    public void onRead(CdsReadEventContext context) {
        context.setResult(dataInMemory.values());
    }    
}
