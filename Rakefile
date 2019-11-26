require 'pg'
task :setup do
  connection = PG.connect
  connection.exec('CREATE DATABASE mvc_example;')

  connection = PG.connect :dbname => 'mvc_example';
  connection.exec('CREATE TABLE books (id SERIAL PRIMARY KEY, name VARCHAR(20), author VARCHAR(20));')
end
