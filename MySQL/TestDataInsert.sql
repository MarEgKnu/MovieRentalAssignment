START TRANSACTION;


INSERT INTO genres (Name) VALUES
('Action'),
('Drama'),
('Sci-Fi'),
('Comedy'),
('Thriller');

INSERT INTO languages (CountryCode, Name) VALUES
('en-US', 'English'),
('fr-FR', 'French'),
('es-ES', 'Spanish'),
('de-DE', 'German'),
('ja-JP', 'Japanese');

INSERT INTO publishers (Name) VALUES
('Warner Bros'),
('Universal Pictures'),
('Paramount Pictures'),
('StudioCanal'),
('Toho Co., Ltd.');


INSERT INTO people (FirstName, LastName) VALUES
('Leonardo', 'DiCaprio'),
('Christopher', 'Nolan'),
('Scarlett', 'Johansson'),
('Quentin', 'Tarantino'),
('Tom', 'Cruise'),
('Sofia', 'Coppola'),
('Keanu', 'Reeves'),
('Denis', 'Villeneuve');

INSERT INTO movies (Title, RuntimeSeconds, MinimumAge, Price, ReleaseDate) VALUES
('Inception', 8880, 13, 5, '2010-07-16'),
('Pulp Fiction', 9480, 18, 4, '1994-10-14'),
('Lost in Translation', 6120, 12, 3, '2003-09-12'),
('Mission Impossible', 6600, 13, 4, '1996-05-22'),
('The Matrix', 8160, 16, 5, '1999-03-31');


INSERT INTO movie_genres VALUES
(1,3), -- Inception - Sci-Fi
(1,1), -- Action
(2,2), -- Drama
(2,5), -- Thriller
(3,2),
(4,1),
(4,5),
(5,1),
(5,3);


INSERT INTO movie_actors VALUES
(1,1),
(2,1),
(4,5),
(5,7),
(3,3);


INSERT INTO movie_directors VALUES
(1,2),
(2,4),
(3,6),
(5,8);


INSERT INTO movie_publishers VALUES
(1,1),
(2,3),
(3,4),
(4,2),
(5,5);


INSERT INTO movie_spoken_languages VALUES
(1,1),
(2,1),
(3,1),
(3,2),
(4,1),
(5,1);



INSERT INTO movie_subtitle_languages VALUES
(1,1),(1,2),(1,3),
(2,1),(2,3),
(3,1),(3,2),
(4,1),(4,4),
(5,1),(5,5);



INSERT INTO accounts (Name, PhoneNumber, Balance, PasswordHash) VALUES
('Alice Johnson', '1234567890', 10, 982374923),
('Bob Smith', '5551234567', 3, 234987234),
('Charlie Brown', '9876543210', 7, 987234987),
('Diana Prince', '4445556666', 5, 111222333);



INSERT INTO card_payment_methods (CardNumber) VALUES
('4111111111111111'),
('5500000000000004'),
('340000000000009');


INSERT INTO paypal_payment_methods (Username, Email, Password) VALUES
('alice_paypal', 'alice@example.com', 'hashed_pw1'),
('bob_paypal', 'bob@example.com', 'hashed_pw2');




INSERT INTO accounts_card_payment_methods VALUES
(1,1),
(1,2),
(2,3);

INSERT INTO accounts_paypal_payment_methods VALUES
(1,1),
(2,2);






INSERT INTO giftcards (ID, CodeHash, Amount) VALUES
(1, 888111222, 5),
(2, 777333444, 3);



INSERT INTO orders (ID, OrderTimeStamp) VALUES
(1, 1708000000000),
(2, 1708100000000),
(3, 1708200000000);


INSERT INTO orderlines (ID, AccountID, MovieID, GiftcardID, OrderID, Price) VALUES
(1, 1, 1, NULL, 1, 5),
(2, 1, NULL, 1, 2, 3),
(3, 2, 2, NULL, 3, 4);



INSERT INTO customer_rentings (ID, CustomerID, MovieID, PeriodStart, PeriodEnd, Price) VALUES
(1, 1, 1, 1708000000000, 1708086400000, 5),
(2, 2, 2, 1708100000000, 1708186400000, 4),
(3, 3, 5, 1708200000000, 1708286400000, 5);


INSERT INTO customer_bookmarks VALUES
(1,5,1708010000000),
(2,1,1708105000000),
(3,2,1708202000000);



INSERT INTO customer_watchtracking VALUES
(1,1,1708005000000, 3600),
(2,2,1708105000000, 1200),
(3,5,1708208000000, 2400);


INSERT INTO support_tickets (Title, Description, CreationDate, CreatedBy) VALUES
('Playback Issue', 'Movie stops after 10 minutes.', 1708006000000, 1),
('Payment Failed', 'Card declined but funds available.', 1708106000000, 2),
('Subtitle Bug', 'Subtitles out of sync.', 1708206000000, 3);


COMMIT;