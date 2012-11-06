require 'sinatra'
require 'mongo'
include Mongo

get '/test' do

  connection = Connection.new('localhost','27017')
  db = connection.db('test')

  coll = db.collection('testCollection')

  doc = {"name" => "MongoDB", "type" => "database", "count" => 1, "info" => {"x" => 203, "y" => '102'}}
  id = coll.insert(doc)

  result = ""
  coll.find.to_a.each do |elem|
    result += "<h1>#{elem["name"]}</h1>"
  end

  coll.drop

  result

end