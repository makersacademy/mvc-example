require './lib/database_connection'

if ENV['RACK_ENV'] == "test"
  DatabaseConnection.setup('mvc_example_test')
else
  DatabaseConnection.setup('mvc_example')
end
