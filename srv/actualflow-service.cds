using { alvachien.demo.cap as my } from '../db/schema';
using { Currency } from '@sap/cds/common';

service FlowsService {  
  entity CompanyCodes as projection on my.CompanyCodes {
    *
  } 

  @cds.persistence.skip: true
  entity ReportCycles {
    key companyCodeID: String;
    key cycleID : String;
    dateFrom   : Date;
    dateTo     : Date;
  }

  entity ActualFlows as projection on my.ActualFlows {
    *
  }

  @cds.persistence.skip: true
  entity ActualFlowLists {
    key companyCodeID: String;
    key liquidityItem: String;
    key flowType: Integer;
    currency: Currency;

    amount1 : Decimal;
    amount2 : Decimal;
    amount3 : Decimal;
    amount4 : Decimal;
    amount5 : Decimal;
    amount6 : Decimal;
    amount7 : Decimal;
    amount8 : Decimal;
    amount9 : Decimal;
    amount10 : Decimal;
    amount11 : Decimal;
    amount12 : Decimal;
    amount13 : Decimal;
    amount14 : Decimal;
    amount15 : Decimal;
    amount16 : Decimal;
    amount17 : Decimal;
    amount18 : Decimal;
    amount19 : Decimal;
    amount20 : Decimal;
    amount21 : Decimal;
    amount22 : Decimal;
    amount23 : Decimal;
    amount24 : Decimal;
    amount25 : Decimal;
    amount26 : Decimal;
    amount27 : Decimal;
    amount28 : Decimal;
    amount29 : Decimal;
    amount30 : Decimal;
    amount31 : Decimal;
  }

  @cds.persistence.skip: true
  entity CompanyCodeLists {
    key companyCodeID: String;
    companyCodeName: String;
    cycels: Association to many ReportCycles;
    flowLists: Association to many ActualFlowLists;
  }

}
