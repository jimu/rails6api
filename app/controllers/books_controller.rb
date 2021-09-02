class BooksController < ApplicationController
  def show
    render json: Book.all
  end

  def create
    book = Book.new(book_params) # title: params[:title], author: params[:author]
    if book.save
      render json: book, status: :created      # 201
    else
      render json: book.errors, status: :unprocessable_entity
    end
  end

  def delete
    Book.delete @id
  end

  private

  def book_params
    params.require(:book)
    params.permit :title, :author
  end
end
