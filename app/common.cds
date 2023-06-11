

////////////////////////////////////////////////////////////////////////////
//
//	Languages List
//
annotate common.Languages with
@(
    Common.SemanticKey : [code],
    Identification : [{Value : code}],
    UI : {
        SelectionFields : [
            name,
            descr
        ],
        LineItem : [
            {Value : code},
            {Value : name},
        ],
    }
);


////////////////////////////////////////////////////////////////////////////
//
//	Language Details
//
annotate common.Languages with
@(UI : {
    HeaderInfo : {
        TypeName : '{i18n>Language}',
        TypeNamePlural : '{i18n>Languages}',
        Title : {Value : name},
        Description : {Value : descr}
    },
    Facets : [{
        $Type : 'UI.ReferenceFacet',
        Label : '{i18n>Details}',
        Target : '@UI.FieldGroup#Details'
    }, ],
    FieldGroup #Details : {Data : [
        {Value : code},
        {Value : name},
        {Value : descr}
    ]},
});


////////////////////////////////////////////////////////////////////////////
//
//	Currencies List
//
annotate common.Currencies with
@(
    Common.SemanticKey : [code],
    Identification : [{Value : code}],
    UI : {
        SelectionFields : [
            name,
            descr
        ],
        LineItem : [
            {Value : descr},
            {Value : symbol},
            {Value : code},
        ],
    }
);


////////////////////////////////////////////////////////////////////////////
//
//	Currency Details
//
annotate common.Currencies with
@(UI : {
    HeaderInfo : {
        TypeName : '{i18n>Currency}',
        TypeNamePlural : '{i18n>Currencies}',
        Title : {Value : descr},
        Description : {Value : code}
    },
    Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Details}',
            Target : '@UI.FieldGroup#Details'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Extended}',
            Target : '@UI.FieldGroup#Extended'
        },
    ],
    FieldGroup #Details : {Data : [
        {Value : name},
        {Value : symbol},
        {Value : code},
        {Value : descr}
    ]},
    FieldGroup #Extended : {Data : [
        {Value : numcode},
        {Value : minor},
        {Value : exponent}
    ]},
});


////////////////////////////////////////////////////////////////////////////
//
//	Currencies Elements
//
annotate common.Currencies with {
    numcode
    @title : '{i18n>NumCode}';
    minor
    @title : '{i18n>MinorUnit}';
    exponent
    @title : '{i18n>Exponent}';
}

////////////////////////////////////////////////////////////////////////////
//
//	Fiori requires generated IDs to be annotated with @Core.Computed
//
using {cuid} from '@sap/cds/common';

annotate cuid with {
    ID
    @Core.Computed
}
