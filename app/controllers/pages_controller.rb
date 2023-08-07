class PagesController < ApplicationController

  def home
    @p_posts = Post.where(type_tag: "project").last(3).reverse_each
    @a_posts = Post.where(type_tag: "article").last(3).reverse_each
  end

  def projects

  end

  def articles

  end

  def experience

  end

  def aboutme

  end

end
