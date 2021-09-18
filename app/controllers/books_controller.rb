class BooksController < ApplicationController

  def index
    books = Book.all
    # render json: books.to_json(except: %i[created_at updated_at author_id],
    #                            include: [author: { only: [:name] }])

    # render json: Book1Serializer.new(books)

    # AMS

    render json: books

  end
end
