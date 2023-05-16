using FlowsService as service from '../../srv/actualflow-service';

annotate service.ActualFlowLists with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'flowType',
            Value : flowType,
        },
        {
            $Type : 'UI.DataField',
            Label : 'liquidityItem',
            Value : liquidityItem,
        },
        {
            $Type : 'UI.DataField',
            Label : 'companyCodeID',
            Value : companyCodeID,
        },
        {
            $Type : 'UI.DataField',
            Value : currency_code,
        },
        {
            $Type : 'UI.DataField',
            Label : 'amount1',
            Value : amount1,
        },
    ]
);
annotate service.ActualFlowLists with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'companyCodeID',
                Value : companyCodeID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'liquidityItem',
                Value : liquidityItem,
            },
            {
                $Type : 'UI.DataField',
                Label : 'flowType',
                Value : flowType,
            },
            {
                $Type : 'UI.DataField',
                Value : currency_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount1',
                Value : amount1,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount2',
                Value : amount2,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount3',
                Value : amount3,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount4',
                Value : amount4,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount5',
                Value : amount5,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount6',
                Value : amount6,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount7',
                Value : amount7,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount8',
                Value : amount8,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount9',
                Value : amount9,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount10',
                Value : amount10,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount11',
                Value : amount11,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount12',
                Value : amount12,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount13',
                Value : amount13,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount14',
                Value : amount14,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount15',
                Value : amount15,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount16',
                Value : amount16,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount17',
                Value : amount17,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount18',
                Value : amount18,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount19',
                Value : amount19,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount20',
                Value : amount20,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount21',
                Value : amount21,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount22',
                Value : amount22,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount23',
                Value : amount23,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount24',
                Value : amount24,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount25',
                Value : amount25,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount26',
                Value : amount26,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount27',
                Value : amount27,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount28',
                Value : amount28,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount29',
                Value : amount29,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount30',
                Value : amount30,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount31',
                Value : amount31,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
