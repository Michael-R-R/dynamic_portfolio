class PagesController < ApplicationController

  def home
    @p_posts = Project.last(3).reverse_each
    @a_posts = Article.last(3).reverse_each
  end

  def projects
    @p_posts = Project.last(6).reverse_each
  end

  def articles

  end

  def experience

  end

  def aboutme

  end

end
