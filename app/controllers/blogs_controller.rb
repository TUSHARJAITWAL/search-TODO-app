class BlogsController < ApplicationController
  def index
    @blogs = Blog.eager_load(:student)
  end
end
