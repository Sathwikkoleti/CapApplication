using MyService as service from '../../srv/service';
annotate service.PurchaseOrder with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'poNumber',
                Value : poNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'supplierName',
                Value : supplierName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'orderDate',
                Value : orderDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status',
                Value : status,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'PoItems',
            ID : 'PoItems',
            Target : 'items/@UI.LineItem#PoItems',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'poNumber',
            Value : poNumber,
        },
        {
            $Type : 'UI.DataField',
            Label : 'supplierName',
            Value : supplierName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'orderDate',
            Value : orderDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'status',
            Value : status,
        },
    ],
    UI.SelectionFields : [
        ID,
        orderDate,
        poNumber,
        status,
        items.materialCode,
    ],
);

annotate service.PurchaseOrder with {
    ID @Common.Label : 'ID'
};

annotate service.PurchaseOrder with {
    orderDate @Common.Label : 'orderDate'
};

annotate service.PurchaseOrder with {
    poNumber @Common.Label : 'poNumber'
};

annotate service.PurchaseOrder with {
    status @Common.Label : 'status'
};

annotate service.PurchaseOrderItem with {
    materialCode @Common.Label : 'items/materialCode'
};

annotate service.PurchaseOrderItem with @(
    UI.LineItem #PoItems : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : materialCode,
        },
        {
            $Type : 'UI.DataField',
            Value : materialDesc,
            Label : 'materialDesc',
        },
        {
            $Type : 'UI.DataField',
            Value : quantity,
            Label : 'quantity',
        },
        {
            $Type : 'UI.DataField',
            Value : totalPrice,
            Label : 'totalPrice',
        },
        {
            $Type : 'UI.DataField',
            Value : unitPrice,
            Label : 'unitPrice',
        },
        {
            $Type : 'UI.DataField',
            Value : parent_ID,
            Label : 'parent_ID',
        },
    ],
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Po Item',
            ID : 'PoItem',
            Target : '@UI.FieldGroup#PoItem',
        },
    ],
    UI.FieldGroup #PoItem : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : parent.items.ID,
                Label : 'ID',
            },
            {
                $Type : 'UI.DataField',
                Value : parent.items.materialCode,
            },
            {
                $Type : 'UI.DataField',
                Value : parent.items.materialDesc,
                Label : 'materialDesc',
            },
            {
                $Type : 'UI.DataField',
                Value : parent.items.modifiedAt,
            },
            {
                $Type : 'UI.DataField',
                Value : parent.items.modifiedBy,
            },
            {
                $Type : 'UI.DataField',
                Value : parent.items.parent_ID,
                Label : 'parent_ID',
            },
            {
                $Type : 'UI.DataField',
                Value : parent.items.quantity,
                Label : 'quantity',
            },
            {
                $Type : 'UI.DataField',
                Value : parent.items.totalPrice,
                Label : 'totalPrice',
            },
            {
                $Type : 'UI.DataField',
                Value : parent.items.unitPrice,
                Label : 'unitPrice',
            },
            {
                $Type : 'UI.DataField',
                Value : parent.items.createdAt,
            },
            {
                $Type : 'UI.DataField',
                Value : parent.items.createdBy,
            },
        ],
    },
);

