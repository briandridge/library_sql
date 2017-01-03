-- ADVANCED / JOIN QUERIES
-- For all of these queries, you SHOULD NOT use an id # in a WHERE clause


-- Find all fields (book and author related) for all books written by George R.R. Martin.
SELECT * FROM books JOIN authors ON (books.author_id = authors.id) WHERE name = 'George R.R. Martin';
--  id |                title                | publication_date | author_id | id |        name        |       nationality        | birth_year 
-- ----+-------------------------------------+------------------+-----------+----+--------------------+--------------------------+------------
--  63 | A Game of Thrones                   |             1996 |         8 |  8 | George R.R. Martin | United States of America |       1945
--  64 | A Clash of Kings                    |             1998 |         8 |  8 | George R.R. Martin | United States of America |       1945
--  65 | A Storm of Swords                   |             2000 |         8 |  8 | George R.R. Martin | United States of America |       1945
--  66 | A Feast for Crows                   |             2005 |         8 |  8 | George R.R. Martin | United States of America |       1945
--  67 | A Dance with Dragons                |             2011 |         8 |  8 | George R.R. Martin | United States of America |       1945
--  68 | I Swear the Dragons are Coming Soon |             2014 |         8 |  8 | George R.R. Martin | United States of America |       1945
-- (6 rows)

-- Find all fields (book and author related) for all books written by Milan Kundera.
SELECT * FROM books JOIN authors ON (books.author_id = authors.id) WHERE name = 'Milan Kundera';
--  id |                title                | publication_date | author_id | id |     name      |  nationality   | birth_year 
-- ----+-------------------------------------+------------------+-----------+----+---------------+----------------+------------
--  49 | The Joke                            |             1967 |         6 |  6 | Milan Kundera | Czechoslovakia |       1929
--  50 | The Farewell Waltz                  |             1972 |         6 |  6 | Milan Kundera | Czechoslovakia |       1929
--  51 | Life Is Elsewhere                   |             1973 |         6 |  6 | Milan Kundera | Czechoslovakia |       1929
--  52 | The Book of Laughter and Forgetting |             1978 |         6 |  6 | Milan Kundera | Czechoslovakia |       1929
--  53 | The Unbearable Lightness of Being   |             1984 |         6 |  6 | Milan Kundera | Czechoslovakia |       1929
--  54 | Immortality                         |             1990 |         6 |  6 | Milan Kundera | Czechoslovakia |       1929
--  55 | Slowness                            |             1995 |         6 |  6 | Milan Kundera | Czechoslovakia |       1929
--  56 | Identity                            |             1998 |         6 |  6 | Milan Kundera | Czechoslovakia |       1929
--  57 | Ignorance                           |             2000 |         6 |  6 | Milan Kundera | Czechoslovakia |       1929
-- (9 rows)

-- Find all books written by an author from China or the UK.
SELECT * FROM books JOIN authors ON (books.author_id = authors.id) WHERE authors.nationality = 'China' OR authors.nationality = 'United Kingdom';
--  id |                   title                   | publication_date | author_id | id |     name     |  nationality   | birth_year 
-- ----+-------------------------------------------+------------------+-----------+----+--------------+----------------+------------
--   1 | Dream of the Red Chamber                  |             1750 |         1 |  1 | Cao Xueqin   | China          |       1715
--   2 | Harry Potter and the Philosophers Stone   |             1997 |         2 |  2 | J.K. Rowling | United Kingdom |       1965
--   3 | Harry Potter and the Chamber of Secrets   |             1998 |         2 |  2 | J.K. Rowling | United Kingdom |       1965
--   4 | Harry Potter and the Prisoner of Azkaban  |             1998 |         2 |  2 | J.K. Rowling | United Kingdom |       1965
--   5 | Harry Potter and the Goblet of Fire       |             2000 |         2 |  2 | J.K. Rowling | United Kingdom |       1965
--   6 | Harry Potter and the Order of the Phoenix |             2003 |         2 |  2 | J.K. Rowling | United Kingdom |       1965
--   7 | Harry Potter and the Half-Blood Prince    |             2005 |         2 |  2 | J.K. Rowling | United Kingdom |       1965
--   8 | Harry Potter and the Deathly Hallows      |             2007 |         2 |  2 | J.K. Rowling | United Kingdom |       1965
--   9 | The Casual Vacancy                        |             2012 |         2 |  2 | J.K. Rowling | United Kingdom |       1965
-- (9 rows)

-- Find out how many books Albert Camus wrote.
SELECT * FROM books JOIN authors ON (books.author_id = authors.id) WHERE name = 'Albert Camus';
--  id |     title     | publication_date | author_id | id |     name     | nationality | birth_year 
-- ----+---------------+------------------+-----------+----+--------------+-------------+------------
--  58 | The Stranger  |             1942 |         7 |  7 | Albert Camus | France      |       1913
--  59 | The Plague    |             1947 |         7 |  7 | Albert Camus | France      |       1913
--  60 | The Fall      |             1956 |         7 |  7 | Albert Camus | France      |       1913
--  61 | A Happy Death |             1971 |         7 |  7 | Albert Camus | France      |       1913
--  62 | The First Man |             1995 |         7 |  7 | Albert Camus | France      |       1913
-- (5 rows)

-- Find out how many books written before 1980 were by authors not from the US.
SELECT * FROM books JOIN authors ON (books.author_id = authors.id) WHERE publication_date < 1980 AND nationality != 'United States of America';
--  id |                 title                 | publication_date | author_id | id |       name        |  nationality   | birth_year 
-- ----+---------------------------------------+------------------+-----------+----+-------------------+----------------+------------
--   1 | Dream of the Red Chamber              |             1750 |         1 |  1 | Cao Xueqin        | China          |       1715
--  30 | Fervor de Buenos Aires                |             1923 |         4 |  4 | Jorge Luis Borges | Argentina      |       1899
--  31 | Inquisiciones                         |             1925 |         4 |  4 | Jorge Luis Borges | Argentina      |       1899
--  32 | Luna de Enfrente                      |             1925 |         4 |  4 | Jorge Luis Borges | Argentina      |       1899
--  33 | El idioma de los argentinos           |             1928 |         4 |  4 | Jorge Luis Borges | Argentina      |       1899
--  34 | Cuaderno San Martín                   |             1929 |         4 |  4 | Jorge Luis Borges | Argentina      |       1899
--  35 | Discusión                             |             1957 |         4 |  4 | Jorge Luis Borges | Argentina      |       1899
--  36 | Historia de la eternidad              |             1936 |         4 |  4 | Jorge Luis Borges | Argentina      |       1899
--  37 | El jardín de senderos que se bifurcan |             1941 |         4 |  4 | Jorge Luis Borges | Argentina      |       1899
--  38 | Seis problemas para don Isidro Parodi |             1942 |         4 |  4 | Jorge Luis Borges | Argentina      |       1899
--  49 | The Joke                              |             1967 |         6 |  6 | Milan Kundera     | Czechoslovakia |       1929
--  50 | The Farewell Waltz                    |             1972 |         6 |  6 | Milan Kundera     | Czechoslovakia |       1929
--  51 | Life Is Elsewhere                     |             1973 |         6 |  6 | Milan Kundera     | Czechoslovakia |       1929
--  52 | The Book of Laughter and Forgetting   |             1978 |         6 |  6 | Milan Kundera     | Czechoslovakia |       1929
--  58 | The Stranger                          |             1942 |         7 |  7 | Albert Camus      | France         |       1913
--  59 | The Plague                            |             1947 |         7 |  7 | Albert Camus      | France         |       1913
--  60 | The Fall                              |             1956 |         7 |  7 | Albert Camus      | France         |       1913
--  61 | A Happy Death                         |             1971 |         7 |  7 | Albert Camus      | France         |       1913
-- (18 rows)

-- For these last two, you should not need a JOIN.

-- Find all authors whose names start with 'J'.
SELECT * FROM authors WHERE name LIKE '%J%';
--  id |       name        |       nationality        | birth_year 
-- ----+-------------------+--------------------------+------------
--   2 | J.K. Rowling      | United Kingdom           |       1965
--   3 | James Baldwin     | United States of America |       1924
--   4 | Jorge Luis Borges | Argentina                |       1899
-- (3 rows)

-- Find all books whose titles contain 'the'.
SELECT * FROM books WHERE title LIKE '%the%' OR title LIKE 'The%';
-- (35 rows)



-- AUTHORS;
--  id |        name        |       nationality        | birth_year 
-- ----+--------------------+--------------------------+------------
--   1 | Cao Xueqin         | China                    |       1715

-- BOOKS;
--  id |                      title                       | publication_date | author_id 
-- ----+--------------------------------------------------+------------------+-----------
--   1 | Dream of the Red Chamber                         |             1750 |         1