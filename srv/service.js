const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {
    const { PurchaseOrder,PurchaseOrderItem, Customers,Products } = this.entities;
    const service = await cds.connect.to('Northwind') 

    this.before(['CREATE', 'UPDATE'], 'PurchaseOrder', async (req) => {
        const { poNumber, orderDate } = req.data;

        if (!poNumber) {
            req.error({ message: 'Purchase order number is required.' });
        }
        const poRegex = /^PO-\d{5}$/;
        if (!poRegex.test(poNumber)) {
            req.error('PO Number must be in format PO-12345');
        }
        if (new Date(orderDate) > new Date() || new Date(orderDate) < new Date('2000-01-01')) { 
            req.error('Order date must be a valid date after January 1, 2000.'); 
        }
    });
    this.before(['CREATE', 'UPDATE'], 'PurchaseOrderItem', async (req) => {
        const { materialCode, quantity, unitPrice } = req.data;
        if (!materialCode) {
            req.error('Material code is required.');
        }
        if (quantity <= 0) {
            req.error('Quantity must be greater than zero.');
        }
        if(unitPrice <= 0){
            req.error('Unit price must be greater than zero.');
        }
    });
    this.on('READ', 'Customers', async (req) => {
 
        return await service.tx(req).run(req.query);
 
    });
    this.on('READ', 'Products', async (req) => {
 
        return await service.tx(req).run(req.query);
 
    })
})