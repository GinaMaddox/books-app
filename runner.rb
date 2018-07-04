require 'unirest'

# #INDEX ACTION
# response = Unirest.get("localhost:3000/api/books")
# books = response.body
# p response.body

# # #SHOW ACTION
# book_id = 5
# response = Unirest.get("localhost:3000/api/books/#{book_id}")
# p response.body


# CREATE ACTION
# response = Unirest.post("localhost:3000/api/books", 
#   parameters: {
#     title: "Organized Enough",
#     author: "Amanda Sullivan",
#     publisher: "Lifelong Books",
#     genre: "Self Help"
#   })
# p response.body

#UPDATE ACTION
# book_id = 19
# response = Unirest.patch("localhost:3000/api/books/#{book_id}",
#   parameters: {
#     title: "Ruby DEsign",
#     author: "Sandi Metz",
#     publisher: "Lifelong Books",
#     genre: "Education"
#   })
# p response.body

#DESTROY ACTION
book_id = 20
response = Unirest.delete("localhost:3000/api/books/#{book_id}")
p response.body
