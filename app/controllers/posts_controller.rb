# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :current_user, only: %i[new create]

  def index
    @posts = Post.all
  end

  def new
    @post = current_user.posts.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      flash[:success] = 'Your post has created successfully'
      redirect_to post_index_path
    else
      flash[:danger] = 'Invalid post, Please try again!'
      render 'new'
    end
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
