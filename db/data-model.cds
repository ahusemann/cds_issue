namespace naming.issue;

using {
  cuid,
  managed,
  User
} from '@sap/cds/common';

//--------------------------------------------------------------------------
// Entities

entity Products : cuid, managed {
  Description   : localized String(50);
  hierarchyNode : Association to one HierarchyNodes not null;
}

entity HierarchyNodes {
  key ID          : String(10);
      parent      : Association to HierarchyNodes;
      description : localized String(50);
}

