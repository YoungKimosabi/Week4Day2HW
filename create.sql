DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customer(
     customer_id SERIAL PRIMARY KEY,
     customer_name VARCHAR(50),
     customer_age VARCHAR(2),
     genre_tendency VARCHAR(15),
     customer_email VARCHAR(50)
);

DROP TABLE IF EXISTS concession CASCADE;
CREATE TABLE concession(
    concession_id SERIAL PRIMARY KEY,
    item VARCHAR(15),
    "desc" TEXT,
    price decimal(4, 2)

);

DROP TABLE IF EXISTS movie CASCADE;
CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    movie_title VARCHAR(50)
);

DROP TABLE IF EXISTS customer_concession CASCADE;
CREATE TABLE customer_concession(
    concession_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY(concession_id) REFERENCES concession(concession_id),
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

DROP TABLE IF EXISTS ticket CASCADE;
CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    show_time VARCHAR(20),
    movie_id INTEGER NOT NULL,
    FOREIGN KEY(movie_id) REFERENCES movie(movie_id)
);

DROP TABLE IF EXISTS customer_order CASCADE;
CREATE TABLE customer_order(
    order_id SERIAL PRIMARY KEY,
    ticket_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY(ticket_id) REFERENCES ticket(ticket_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

DROP TABLE IF EXISTS theatre CASCADE;
CREATE TABLE theatre(
    theatre_id SERIAL PRIMARY KEY,
    theatre_number integer NOT NULL
);

DROP TABLE IF EXISTS ticket_theatre CASCADE;
CREATE TABLE ticket_theatre(
    ticket_id INTEGER NOT NULL,
    theatre_id INTEGER NOT NULL,
    FOREIGN KEY(ticket_id) REFERENCES ticket(ticket_id),
    FOREIGN KEY(theatre_id) REFERENCES theatre(theatre_id)  
);

DROP TABLE IF EXISTS seat CASCADE;
CREATE TABLE seat(
    seat_id SERIAL PRIMARY KEY,
    seat_number integer,
    theatre_id INTEGER NOT NULL,
    FOREIGN KEY (theatre_id) REFERENCES theatre(theatre_id)
);