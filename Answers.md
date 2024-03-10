Q1. Explain the relationship between the "Product" and "Product_Category" entities from the above diagram ?

Ans-:There is a one-to-many link between the Product and Product_Category entities. This implies that although a product may fall under more than one category, 
it may only be a part of one category per product.A foreign key constraint in the database schema establishes this relationship. A foreign key referencing the id column in
the Product_Category database is present in the category_id column of the Product table. In order to enforce the one-to-many link between the two entities, this foreign key 
constraint makes sure that each category_id in the Product table must match an existent id value in the Product_Category table.


Q2. How could you ensure that each product in the "Product" table has a valid category assigned to it?

Ans-:We can use a foreign key constraint to make sure that every product in the Product database has a proper category
allocated to it. This constraint will ensure that the value in the "Product" table's "{category_id} column is always the same as
the value in the "Product_Category" table's "{id} column. The database will generate an error and the operation will fail if an 
attempt is made to insert or update a product with an incorrect {category_id}, guaranteeing the data's integrity.
