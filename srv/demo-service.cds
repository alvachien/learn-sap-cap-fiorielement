using { alvachien.learncap.db as db } from '../db/schema';

service DemoService {
    @cds.persistence.skip: true
    entity DemoEntity {
        key ID: Integer;
        title: String(111);
        descr: String(1111);
    }

    entity DBEntities as projection on db.DBEntities;
    entity Products   as projection on db.Products;
    entity Categories as projection on db.Categories;    

    entity TestObjecs as projection on db.TestObjects;
}
