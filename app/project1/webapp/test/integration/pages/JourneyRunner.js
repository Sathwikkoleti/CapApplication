sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"project1/test/integration/pages/PurchaseOrderList",
	"project1/test/integration/pages/PurchaseOrderObjectPage",
	"project1/test/integration/pages/PurchaseOrderItemObjectPage"
], function (JourneyRunner, PurchaseOrderList, PurchaseOrderObjectPage, PurchaseOrderItemObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('project1') + '/test/flp.html#app-preview',
        pages: {
			onThePurchaseOrderList: PurchaseOrderList,
			onThePurchaseOrderObjectPage: PurchaseOrderObjectPage,
			onThePurchaseOrderItemObjectPage: PurchaseOrderItemObjectPage
        },
        async: true
    });

    return runner;
});

