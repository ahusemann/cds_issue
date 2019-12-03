
using naming.issue as issue from '../db/data-model';

namespace naming.issue;

service ProductService @(path : '/product') {

  entity Products                                                as projection on issue.Products;

  entity HierarchyNodes @readonly                                as projection on issue.HierarchyNodes;

  action check(product : Products.ID);

}