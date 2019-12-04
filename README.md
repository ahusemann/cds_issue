# cds_issue

Issue: Attribute names of entities differ between local (SQLLite) and cloud (HANA) db.

Steps to reproduce local behaviour:

1. Clone repo git clone https://github.com/ahusemann/cds_issue.git
2. `cd cds_issue`
3. run `npm i`
4. execute `cds deploy && cds serve all`, now the local server should run
5. call *check* function in postman, a sample collection is contained in the repo (https://github.com/ahusemann/cds_issue/blob/master/cds_issue_local.postman_collection.json)

**The result should be a return code 204, as the check succeeds.**

Steps to reproduce cloud behaviour:
1. Deploy to cf environment by building a mta `npm run build:mta` and the deployijng it `cf deploy mta_archives/products_1.0.0.mtar`
2. make a call the created *products-srv*, with the *check* function

**This results in a return code 400.**

