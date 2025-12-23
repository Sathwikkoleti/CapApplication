namespace ust.PO.db;

using { managed } from '@sap/cds/common';



entity PurchaseOrder : managed {
  key ID           : UUID;
  poNumber         : String(10);
  supplierName     : String(50);
  orderDate        : Date;
  status           : String(20);

  items            : Composition of many PurchaseOrderItem
                       on items.parent = $self;
}

entity PurchaseOrderItem : managed {
  key ID           : UUID;
  parent           : Association to PurchaseOrder;

  materialCode     : String(20);
  materialDesc     : String(100);
  quantity         : Integer;
  unitPrice        : Decimal(10,2);
  totalPrice       : Decimal(12,2);
}