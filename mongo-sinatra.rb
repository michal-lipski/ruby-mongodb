require 'sinatra'
require 'mongo'
include Mongo

get '/test' do

  connection = Connection.new('localhost','27017')
  db = connection.db('test')

  coll = db.collection('testCollection')

  coll.find_one.to_a.each do |elem|
      #"<h1>#{elem}</h1>"
    "Hello"
  end


end