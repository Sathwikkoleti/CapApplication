using { ust.PO.db } from '../db/schema';
using { Northwind } from './external/Northwind';

service MyService {
    @odata.draft.enabled
    @restrict: [{grant: '*',to: 'manager'},{grant: 'Read',to: 'Employee'}]
    entity PurchaseOrder as projection on db.PurchaseOrder;
    @restrict: [{grant: '*',to: 'manager'},{grant: 'Read',to: 'Employee'},{grant: 'Read',to: 'User'}]
    entity PurchaseOrderItem as projection on db.PurchaseOrderItem;

}

service northwind1 {

    entity Customers as projection on Northwind.Customers;
    entity Products as projection on Northwind.Products;

}

