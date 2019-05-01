DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS transactions;

CREATE TABLE users (id SERIAL PRIMARY KEY NOT NULL,
                    username TEXT NOT NULL,
                    hash TEXT NOT NULL,
                    cash NUMERIC NOT NULL DEFAULT 10000.00 );

CREATE TABLE transactions (purchase_id SERIAL PRIMARY KEY NOT NULL,
                            user_id INT NOT NULL,
                            symbol CHAR(5) NOT NULL,
                            share_number INT NOT NULL,
                            at_price NUMERIC NOT NULL,
                            date VARCHAR(255) NOT NULL);

-- In Postgres:
-- AUTOINCREMENT is SERIAL in postgres(and also INTEGER so no need to specify as INT)
-- INTEGER is INT
-- NUMERIC returns decimal.Decimal instead of float
-- CHAR(5) makes string exactly 5 chars by appending extra spaces

