sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"purchaseorder/test/integration/pages/PurchaseOrderList",
	"purchaseorder/test/integration/pages/PurchaseOrderObjectPage",
	"purchaseorder/test/integration/pages/PurchaseOrderItemObjectPage"
], function (JourneyRunner, PurchaseOrderList, PurchaseOrderObjectPage, PurchaseOrderItemObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('purchaseorder') + '/test/flp.html#app-preview',
        pages: {
			onThePurchaseOrderList: PurchaseOrderList,
			onThePurchaseOrderObjectPage: PurchaseOrderObjectPage,
			onThePurchaseOrderItemObjectPage: PurchaseOrderItemObjectPage
        },
        async: true
    });

    return runner;
});

