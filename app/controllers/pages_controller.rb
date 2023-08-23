class PagesController < ApplicationController

  def home
    @p_posts = Project.last(3).reverse_each
    @a_posts = Article.last(3).reverse_each
  end

  def projects
    @max_count = Project.count
    @show_count = [6, @max_count].min()
    @p_posts = Project.last(@show_count).reverse_each
  end

  def articles
    @show_count = 6
    @a_posts = Article.last(@show_count).reverse_each
  end

  def experience

  end

  def aboutme

  end

end
