using AdminService as service from '../../srv/admin-service';

annotate AdminService.Books with @odata.draft.enabled;
annotate AdminService.Books with @fiori.draft.enabled;


annotate AdminService.Books with @(
  UI: {
    SelectionFields: [ ID, price, currency_code ],
    LineItem: [
      {Value: title},
      {Value: price},
      {Value: currency.symbol, Label:' '},
    ]
  }
);
