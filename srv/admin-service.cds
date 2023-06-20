using { alvachien.learncap.db as db } from '../db/schema';

service AdminService {
    entity Books      as projection on db.Books;
    entity Categories as projection on db.Categories;
}
