class AuthorsController < ApplicationController
  def index
    authors = Author.all
    # render json: authors.to_json(except: %i[created_at updated_at],
    #                              include: [books: { only: %i[title publisher publisher page_count created_at] }])

    # render json: Author1Serializer.new(authors, { include: [:books] })

    # AMS
    render json: authors

  end
end
