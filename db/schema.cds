using { Currency, managed, sap } from '@sap/cds/common';

namespace alvachien.demo.cap;

entity CompanyCodes: sap.common.CodeList {
    key ID: String;
}

entity ActualFlows : managed {
    key ID: Integer;
    companyCode: Association to CompanyCodes;
    transactionDate: Date;
    amount: Decimal;
    currency: Currency;
    liquidityItem: String;
}

