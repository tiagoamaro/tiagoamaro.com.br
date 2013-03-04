class PostsController < ApplicationController
  load_and_authorize_resource

  skip_authorize_resource :only => [:index, :show, :search]

  # POST /posts/search
  def search
    @posts = Post.where("body LIKE :search OR title LIKE :search", search: "%#{params[:s]}%").order(:updated_at).page(params[:page])

    respond_to do |format|
      format.html { render "posts/index" }
    end
  end

  # GET /posts
  def index
    @posts = Post.order(:updated_at).page(params[:page])

    respond_to do |format|
      format.html
    end
  end

  # GET /posts/1
  def show
    respond_to do |format|
      format.html
    end
  end

  # GET /posts/new
  def new
    respond_to do |format|
      format.html
    end
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  def create
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /posts/1
  def update
    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /posts/1
  def destroy
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
    end
  end
end
