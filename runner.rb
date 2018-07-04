require 'unirest'

#INDEX ACTION
response = Unirest.get("localhost:3000/api/books")
