CREATE TABLE customers(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(40) NOT NULL,
	last_name VARCHAR(40) NOT NULL,
	email VARCHAR(25) NOT NULL,
	loyalty_member BOOLEAN DEFAULT FALSE
);


CREATE TABLE theatres(
	theatre_id SERIAL PRIMARY KEY,
	theatre_name VARCHAR(30) NOT NULL,
	address VARCHAR(30) NOT NULL,
	city VARCHAR(20) NOT NULL,
	state VARCHAR(20) NOT NULL,
	zip_code INTEGER NOT NULL,
	capacity INTEGER NOT NULL
);

CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(30) NOT NULL,
	genre VARCHAR(30) NOT NULL,
	run_time INTEGER NOT NULL,
	release_date DATE NOT NULL
);

CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(30) NOT NULL,
	theatre_num INTEGER NOT NULL
);

CREATE TABLE show_times(
	show_time_id SERIAL PRIMARY KEY,
	dates DATE NOT NULL,
	start_time NUMERIC(4,2),
	available_seatS INTEGER NOT NULL,
	price NUMERIC(4,2) NOT NULL
);
	

ALTER TABLE tickets 
ADD COLUMN customer_id INTEGER NOT NULL;

ALTER TABLE tickets 
ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id);


ALTER TABLE show_times
ADD COLUMN movie_id INTEGER NOT NULL

ALTER TABLE show_times  
ADD FOREIGN KEY (movie_id) REFERENCES movies(movie_id);

ALTER TABLE show_times
ADD COLUMN theatre_id INTEGER NOT NULL

ALTER TABLE show_times  
ADD FOREIGN KEY (theatre_id) REFERENCES theatres(theatre_id);




ALTER TABLE show_times
ADD COLUMN ticket_id INTEGER NOT NULL;



ALTER TABLE show_times  
ADD FOREIGN KEY (ticket_id_id) REFERENCES show_times(ticket_id);









	
	
	
	
	
	
	
	