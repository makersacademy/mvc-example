require 'pg'
task :setup do
  connection = PG.connect
  connection.exec('DROP DATABASE IF EXISTS mvc_example;')
  connection.exec('CREATE DATABASE mvc_example;')

  connection.exec('DROP DATABASE IF EXISTS mvc_example_test;')
  connection.exec('CREATE DATABASE mvc_example_test;')

  connection = PG.connect :dbname => 'mvc_example';
  connection.exec('CREATE TABLE books (id SERIAL PRIMARY KEY, name VARCHAR(20), author VARCHAR(20));')
  connection.exec("INSERT INTO books (name, author) values ('harry potter', 'J.K Rowling')")
  connection = PG.connect :dbname => 'mvc_example_test';
  connection.exec('CREATE TABLE books (id SERIAL PRIMARY KEY, name VARCHAR(20), author VARCHAR(20));')
  connection.exec("INSERT INTO books (name, author) values ('test book', 'test author')")
end
