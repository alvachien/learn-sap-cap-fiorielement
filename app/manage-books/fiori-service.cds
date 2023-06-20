using AdminService as service from '../../srv/admin-service';

annotate AdminService.Books with @odata.draft.enabled;
annotate AdminService.Books with @fiori.draft.enabled;

annotate AdminService.Books with @(
  UI: {
    Identification: [ {Value: title} ],
    SelectionFields: [ ID, price, currency_code ],
    LineItem: [
      {Value: title},
      {Value: price},
      {Value: currency.symbol, Label:' '},
    ],
    HeaderInfo: {
      TypeName: 'Book',
      TypeNamePlural: 'Books',
      Title: {Value: title},
      Description: {Value: title}
    },
    Facets: [
      {
        $Type: 'UI.CollectionFacet',
        Label: 'Book Info',
        Facets: [
          {$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup#Main', Label: 'Main Facet'}
        ]
      }
    ],        
    FieldGroup#Main: {
      Data: [
        { Value: ID },
        { Value: title },
        { Value: price },
        { Value: currency_code }               
      ]
    }
  }
);
