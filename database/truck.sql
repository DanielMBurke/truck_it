DROP TABLE IF EXISTS reviews;

CREATE TABLE reviews
(
	review_id SERIAL PRIMARY KEY,
	username VARCHAR(100) NOT NULL,
	rating INTEGER NOT NULL,
	review_title VARCHAR(200) NOT NULL,
	review_text VARCHAR(1000) NOT NULL,
	review_date TIMESTAMP DEFAULT NOW()
);


INSERT INTO REVIEWS(username, rating, review_title, review_text) VALUES ('dwintrich', 4, 'Changed my life', 'Before Truck-it, moving a few things was costly and time consuming. Not anymore!');
INSERT INTO REVIEWS(username, rating, review_title, review_text) VALUES ('grandamajane', 4, 'They plow driveways!', 'I NEVER have to plow my driveway in the winter again thanks to Truck-It!');
INSERT INTO REVIEWS(username, rating, review_title, review_text) VALUES ('mrgrump', 2, 'Drove a toyota...', 'while the app is great i hope them implement what kind of truck they"re offering to drive. I"m a ford guy.');
INSERT INTO REVIEWS(username, rating, review_title, review_text) VALUES ('jimbo', 3, 'They towed me outta the mud!', 'This app offers services that every truck owner and truck-"needer" can appreciate!');