DROP TABLE IF EXISTS restaurants
DROP TABLE IF EXISTS stories 
DROP TABLE IF EXISTS company_responses

CREATE TABLE restaurants (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY, 
  restaurant_name TEXT NOT NULL, 
  social_media TEXT NOT NULL, 
  restaurant_location TEXT NOT NULL
);

CREATE TABLE stories (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY, 
  restaurant_id BIGINT REFERENCES restaurants(id) NOT NULL,
  employee_story TEXT NOT NULL,
  submission_date DATE NOT NULL, 
  still_employed BOOLEAN, 
  tags TEXT[] NOT NULL,
  votes INT NOT NULL
)

CREATE TABLE company_responses(
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY, 
  restaurant_id BIGINT REFERENCES restaurants(id) NOT NULL,
  response TEXT NOT NULL,
  contact_information TEXT NOT NULL, 
  submission_date DATE NOT NULL
)