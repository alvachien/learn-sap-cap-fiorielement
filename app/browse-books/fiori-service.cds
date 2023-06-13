/*
  Annotations for the Browse Books App
*/

using BookService from '../../srv/book-service';

////////////////////////////////////////////////////////////////////////////
//
//	Books Object Page
//
annotate BookService.Books with @(UI : {
    HeaderInfo : {
        TypeName : '{i18n>Book}',
        TypeNamePlural : '{i18n>Books}',
        Title : {Value : title}
    },
    Identification : [
        {Value : title},
    ],
    PresentationVariant : {
        Text : 'Default',
        SortOrder : [{Property : title}],
        Visualizations : ['@UI.LineItem']
    },
    HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            Target : '@UI.DataPoint#rating'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Target : '@UI.DataPoint#price'
        }
    ],
    LineItem : [
        {Value : title},
        {Value : price}
    ],
    Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>General}',
            Target : '@UI.FieldGroup#General'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Description}',
            Target : '@UI.FieldGroup#Descr'
        }
    ],
    FieldGroup #Descr : {Data : [{Value : descr}]},
    DataPoint #stock : {
        Value : stock,
        Title : '{i18n>Stock}'
    },
    DataPoint #price : {
        Value : price,
        Title : '{i18n>Price}'
    }
}) {
    @Measures.ISOCurrency : currency_code
    price
};

annotate BookService.Books.texts with @(UI : {LineItem : [
    {Value : locale},
    {Value : title},
    {Value : descr}
]});

