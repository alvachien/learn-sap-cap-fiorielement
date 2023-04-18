using { alvachien.learncap.db as db } from '../db/schema';


service DemoService {
    @cds.persistence.skip: true
    entity DemoEntity {
        key ID: Integer;
        title: String(111);
        descr: String(1111);
    }

    entity Products   as projection on db.Products;
    entity Categories as projection on db.Categories;    
}
