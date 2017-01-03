-- BASIC QUERIES
-- Unless otherwise stated, all queries should return all columns

-- Get all information about all authors
SELECT * FROM authors;
-- Get just the name and birth year of all authors
SELECT name, birth_year FROM authors;
--         name        | birth_year 
-- --------------------+------------
--  Cao Xueqin         |       1715
--  J.K. Rowling       |       1965
--  James Baldwin      |       1924
--  Jorge Luis Borges  |       1899
--  Haruki Murakami    |       1949
--  Milan Kundera      |       1929
--  Albert Camus       |       1913
--  George R.R. Martin |       1945
-- (8 rows)

-- Get all authors born in the 20th centruy or later
SELECT * FROM authors WHERE birth_year >= 1900;
--  id |        name        |       nationality        | birth_year 
-- ----+--------------------+--------------------------+------------
--   2 | J.K. Rowling       | United Kingdom           |       1965
--   3 | James Baldwin      | United States of America |       1924
--   5 | Haruki Murakami    | Japan                    |       1949
--   6 | Milan Kundera      | Czechoslovakia           |       1929
--   7 | Albert Camus       | France                   |       1913
--   8 | George R.R. Martin | United States of America |       1945
-- (6 rows)
-- Get all authors born in the USA
SELECT * FROM authors WHERE nationality = 'United States of America';
--  id |        name        |       nationality        | birth_year 
-- ----+--------------------+--------------------------+------------
--   3 | James Baldwin      | United States of America |       1924
--   8 | George R.R. Martin | United States of America |       1945
-- (2 rows)

-- Get all books published on 1985
SELECT * FROM books WHERE publication_date = 1985;
--  id |              title              | publication_date | author_id 
-- ----+---------------------------------+------------------+-----------
--  26 | The Evidence of Things Not Seen |             1985 |         3
--  27 | The Price of the Ticket         |             1985 |         3
-- (2 rows)

-- Get all books published before 1989
SELECT * FROM books WHERE publication_date < 1989;
--  id |                      title                       | publication_date | author_id 
-- ----+--------------------------------------------------+------------------+-----------
--   1 | Dream of the Red Chamber                         |             1750 |         1
-- .....................................................................................
--  61 | A Happy Death                                    |             1971 |         7
(38 rows)
-- Get just the title of all books.
SELECT title FROM books;

-- Get just the year that 'A Dance with Dragons' was published
  -- Cry when you realize how long it's been
  SELECT publication_date FROM books WHERE title = 'A Dance with Dragons';
--    publication_date 
-- ------------------
--              2011
-- (1 row)

-- Get all books which have `the` somewhere in their title (hint, look up LIKE/ILIKE)
SELECT * FROM books WHERE title LIKE '%the%';
-- (20 rows)

-- Add yourself as an author
INSERT INTO authors VALUES (9, 'Brian Ridge', 'United States of America', 1986);

-- Add two books that you'd like to write (you can hard-code your id as the author id)
INSERT INTO books VALUES (69, 'How to be awesome like me', 2017, 9);
INSERT INTO books VALUES (70, 'Get Rich or Die Coding', 2017, 9);

-- Update one of your books to have a new title
UPDATE books SET title = 'How to be really awesome like me' WHERE title = 'How to be awesome like me';

-- Delete your books
DELETE FROM books where author_id = 9;

-- Delete your author entry
DELETE FROM authors where id = 9;



-- library=# SELECT * FROM AUTHORS;
--  id |        name        |       nationality        | birth_year 
-- ----+--------------------+--------------------------+------------
--   1 | Cao Xueqin         | China                    |       1715

-- library=# SELECT * FROM books;
--  id |                      title                       | publication_date | author_id 
-- ----+--------------------------------------------------+------------------+-----------
--   1 | Dream of the Red Chamber                         |             1750 |         1
