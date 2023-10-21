using TravelService as service from '../../srv/travel-service';

annotate service.Travel with @(
    UI.LineItem:[
        {
            $Type:'UI.DataField',
            Value:TravelUUID,
            Label:'Travel Id'
        },
        {
            $Type:'UI.DataField',
            Value:BeginDate,
            Label:'Start Date'
        },
        {
            $Type:'UI.DataField',
            Value:EndDate,
            Label:'End Date'
        },
        {
            $Type:'UI.DataField',
            Value:BookingFee,
            Label:'Booking Fee'
        },
        {
            $Type:'UI.DataField',
            Value:TotalPrice,
            Label:'Total Price'
        }
        
        
    ]
);
annotate service.Travel with @(
    UI.SelectionFields : [
        TravelID,
    ]
);

annotate service.Travel with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
             {
                $Type : 'UI.DataField',
                Label : 'Travel ID',
                Value : TravelUUID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Travel Status',
                Value : to_Agency_AgencyID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Travel Start Date',
                Value : BeginDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Travel End Date',
                Value : EndDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Travel Fee',
                Value : BookingFee,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Total Price',
                Value : TotalPrice,
            },
             {
                $Type : 'UI.DataField',
                Label : 'Customer Details',
                Value : to_Customer_CustomerID,
            }
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ]
);

