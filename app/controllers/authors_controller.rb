class AuthorsController < ApplicationController
  before_action :set_author, only: [:show, :update, :destroy]
  before_action :authorize_request, except: %i[create]


  def index
    @authors = Author.all
    # render json: authors.to_json(except: %i[created_at updated_at],
    # include: [books: { only: %i[title publisher publisher page_count created_at] }])
    # render json: Author1Serializer.new(authors, { include: [:books] })

    # AMS
    render json: @authors
  end

  # POST /authors
  def create
    @author = Author.new(author_params)

    if @author.save

      # render :status => "200",
      #     :json => {
      #     :status => "200",
      #    :message => "created successfully",
      #    :response =>@author
      #  }.to_json

      render json: @author, status: :created
    else
      render json: @author.errors, status: :unprocessable_entity
    end
  end


  def show
    # render json: @author
    # author = Author.find(params[:id])
    render json: @author
    
  end

  # PATCH/PUT /users/1
  def update
    if @author.update(author_params)
      render json: @author
    else
      render json: @author.errors, status: :unprocessable_entity
    end
  end
# DELETE /users/1
def destroy
  if @author.destroy
    render :status => "201",
           :json => {
            :status => "200",
            :message => "success"
            }.to_json
  else
    render json: @author.errors, status: :unprocessable_entity
  end
end


private
  # Only allow a list of trusted parameters through.
  def author_params
    params.require(:author).permit(:name)
  end
   # Use callbacks to share common setup or constraints between actions.
   def set_author
    @author = Author.find(params[:id])
  end

end
