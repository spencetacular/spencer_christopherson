class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index  
    case params[:sort]
    when "coding"
      @posts = Post.tagged_with("coding")
    when "leather"
      @posts = Post.tagged_with("leather")
    when "laser"
      @posts = Post.tagged_with("laser")
    when "electronics"
      @posts = Post.tagged_with("electronics")
    when "DIY"
      @posts = Post.tagged_with("DIY")
    else
      @posts = Post.all.order('created_at DESC')   
    end 
  end

  def show
    @post = Post.find(params[:id])
    # binding.pry
    # @comment = Comment.new
  end

  def new
    @post = Post.new
    @tag_names = TagName.all
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    
    if @post.save
        redirect_to posts_path
    else
      #TODO Add errors
      render :new
    end 
  end

  def update
    if @post.update(post_params)
      redirect_to posts_path
    else
      #TODO Add errors
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :content, :image_link, :tag_list, :link, :github_link)
    end
end
