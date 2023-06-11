using { alvachien.learncap.db as db } from '../db/schema';

service BookService {
    @readonly
    entity Books     as projection on db.Books;
    @readonly
    entity Categories as projection on db.Categories;

    entity WishLists as projection on db.WishLists;
}
