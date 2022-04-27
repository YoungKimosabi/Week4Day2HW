-- INSERT INTO customer (customer_name, customer_age, customer_email, genre_tendency) VALUES
-- ('Naruto Uzumaki','25','narutouzumaki@gmail.com', 'Action'),
-- ('Peter Parker', '27', 'notspiderman@hotmail.com', 'Romance'),
-- ('Kevin Beier', '99', 'miyagi@yahoo.com', 'Documentary');

-- INSERT INTO concession (item, "desc", price) VALUES
-- ('Nachos', 'Chips with Nacho Cheese and an option of Jalapenos', '5.99'),
-- ('Soda', 'Pepsi and Coke products because licensing isnt an issue', '2.99' ),
-- ('Popcorn', 'Buttery Popcorn with too much salt because cholesterol', '6.99');

-- INSERT INTO movie (movie_title) VALUES
-- ('Armegeddon with Vin Deisel'),
-- ('Parry Hotter: 18+'),
-- ('Avengers: Sony Ttark');

-- INSERT INTO theatre (theatre_number) VALUES
-- (1),
-- (2),
-- (3);

INSERT INTO customer_concession (concession_id, customer_id) VALUES
(1, 19),
(2, 20),
(3, 21);

INSERT INTO ticket(show_time, movie_id) VALUES
('10:00 PM', 2),
('12:00 PM', 1),
('8:00 PM', 3);

INSERT INTO customer_order (ticket_id, customer_id) VALUES
(2, 19),
(1, 20),
(3, 21);


INSERT INTO seat (seat_number, theatre_id) VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO ticket_theatre (ticket_id, theatre_id) VALUES
(2, 1),
(1, 3),
(3, 2);
