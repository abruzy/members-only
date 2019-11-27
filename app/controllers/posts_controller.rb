# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :sign_in_user, only: %i[new create]

  def index
    @post = Post.all
  end

  def new
    @post = current_user.Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      flash[:success] = 'Your post has created successfully'
      redirect_to root_url
    else
      flash[:danger] = 'Invalid post, Please try again!'
      render 'new'
    end
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
