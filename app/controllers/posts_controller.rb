class PostsController < ApplicationController
  # before_action :set_post, only: %i[ show update destroy ]
  skip_before_action :authorize, only:[:index,:destroy,:create,:update]

  # GET /posts
  def index
    posts = Post.all.order(created_at: :desc)
    render json: posts
  end

  # GET /posts/1
  def show
    post = Post.find_by(id: params[:id])
    if post
      render json: post, status: :ok
    else
      render json: {error: "Post not found"}, status:404
    end
  end

  # POST /posts
  def create
    @post = Post.new(post_params)

    if @post.save
      render json: @post, status: :created, location: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # def create
  #   @post = Post.new(post_params)
  #   images = params[:images]
  #   images.each do |image|
  #     @post.images.attach(io: image, filename: image.original_filename)
  #   end
  #   if @post.save
  #     render json: @post, status: :created
  #   else
  #     render json: @post.errors, status: :unprocessable_entity
  #   end
  # end

  # PATCH/PUT /posts/1
  def update
    post = Post.find(params[:id])
    if post.update(post_params)
      render json: post
    else
      render json: { error: "Failed to update post" }, status: :unprocessable_entity
    end
  end
  

  # DELETE /posts/1
  def destroy
    post = Post.find_by(id: params[:id])
    if post
      post.destroy
      head :no_content
    else
      render json: {error: "Failed to delete"}, status: :not_found
    end
  end

  def latest
    @post = Post.last
    render json: PostSerializer.new(@post).serializable_hash[:data][:attributes]
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.permit(:title, :description, :image)
    end
end
