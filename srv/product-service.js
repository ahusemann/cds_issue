
const cds = require('@sap/cds')
module.exports = async (srv) => {
  const ProductService = await cds.connect.to('naming.issue.ProductService');
  const { Products, HierarchyNodes } = ProductService.entities;

  srv.on('check', async (req) => { 
    const { product } = req.data;
    const tx = cds.transaction(req)
    const products = await tx.run(SELECT().from(Products).where({ ID: product}));
    if (!products[0].hierarchyNode_ID)
      req.reject(400, 'hierarchyNode_ID does not exist');
  })
}