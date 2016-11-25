class PostsController < ApplicationController
	  before_action :find_post, only: [:edit, :update, :delete]
	  before_action :authenticate_admin!, except: [:index, :show]

	  # Index action to render all posts
	  def index
	    @posts = Post.all
	  end

	  # New action for creating post
	  def new
	    @post = Post.new
	  end

	  # Create action saves the post into database
	  def create
	     @post = current_admin.posts.create(post_params)
	    if @post.save
	      flash[:notice] = "Successfully created post!"
	      redirect_to post_path(@post)
	    else
	      flash[:alert] = "Error creating new post!"
	      render :new
	    end
	  end

	  # Edit action retrives the post and renders the edit page
	  def edit
	  end

	  # Update action updates the post with the new information
	  def update
	    if @post.update_attributes(post_params)
	      flash[:notice] = "Successfully updated post!"
	      redirect_to post_path
	    else
	      flash[:alert] = "Error updating post!"
	      render :edit
	    end
	  end

	  # The show action renders the individual post after retrieving the the id
	  def show
	  	@post = Post.all.friendly.find(params[:id])
	  end

	  # The destroy action removes the post permanently from the database
	  def destroy
	  	@post.destroy
	    if @post.destroy
	      flash[:notice] = "Successfully deleted post!"
	      redirect_to posts_path
	    else
	      flash[:alert] = "Error updating post!"
	    end
	  end

	  private

	  def post_params
	    params.require(:post).permit(:title, :body, :author)
	  end

	  def find_post
	    @post = current_admin.posts.friendly.find(params[:id])
	  end

end
