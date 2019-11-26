# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :sign_in_user, only: %i[new create]

  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    @post.user_id = current_user.id
    if @post.save
      redirect_to root_url
    else
      render 'new'
    end
  end
end
