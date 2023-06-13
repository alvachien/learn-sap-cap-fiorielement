/*
  Annotations for the Browse Books App
*/

using AdminService from '../../srv/admin-service';

////////////////////////////////////////////////////////////////////////////
//
//	Books Object Page
//
annotate AdminService.Books with @(UI : {
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
        {
            $Type : 'UI.DataFieldForAnnotation',
            Target : '@UI.DataPoint#rating',
            Label : '{i18n>Rating}'
        },
        {Value : price},
        {
            $Type : 'UI.DataFieldForAnnotation',
            Label : '{i18n>AddReview}',
            Target : '@UI.FieldGroup#AddReview'
        }
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
    FieldGroup #General : {Data : [
        {Value : title},
    ]},
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

annotate AdminService.Books.texts with @(UI : {LineItem : [
    {Value : locale},
    {Value : title},
    {Value : descr}
]});
