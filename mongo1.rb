require 'mongo'
include Mongo


connection = Connection.new('localhost','27017')
db = connection.db('test')

coll = db.collection('testCollection')

doc = {"name" => "MongoDB", "type" => "database", "count" => 1, "info" => {"x" => 203, "y" => '102'}}
id = coll.insert(doc)

coll.find_one.to_a.each do |elem|
  puts "<h1>#{elem}</h1>"
end