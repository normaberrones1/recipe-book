CREATE TABLE recipes (
id SERIAL PRIMARY KEY,
name VARCHAR(255) NOT NULL,
ingredients TEXT,
instructions TEXT,
image_url VARCHAR(255),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE users (
id SERIAL PRIMARY KEY,
username VARCHAR(50) UNIQUE NOT NULL,
password VARCHAR(50) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE user_recipes (
user_id INT REFERENCES users(id),
recipe_id INT references recipes(id),
PRIMARY KEY (user_id, recipe_id)
);