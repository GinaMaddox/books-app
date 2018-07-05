class Api::BooksController < ApplicationController
  def index
    @books = Book.all
    render "index.json.jbuilder"
  end

  def create
    @book = Book.new(
      title: params[:title],
      author: params[:author],
      publisher: params[:publisher],
      genre: params[:genre]
    )
    @book.save
    render "show.json.jbuilder"
  end

  def show
    book_id = params[:id]
    @book = Book.find_by(id: book_id)
    # render "show.json.jbuilder"
    render "show.json.jbuilder"
  end
  
  def update
    book_id = params[:id]
    @book = Book.find_by(id: book_id)
    @book.title = params[:title] || book.title
    @book.author =  params[:author] || book.author
    @book.publisher = params[:publisher] || book.publisher
    @book.genre =  params[:genre] || book.genre
    @book.save
    render "show.json.jbuilder"
  end

  def destroy
    book_id = params[:id]
    @book = Book.find_by(id: book_id)
    @book.destroy
    render json: {message: "Book successfully removed from library"}
  end
end
