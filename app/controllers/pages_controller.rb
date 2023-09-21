class PagesController < ApplicationController

  def home
    @p_posts = Project.order("created_at DESC").limit(3)
    @a_posts = Article.order("created_at DESC").limit(3)
  end

  def projects
    @pagy, @p_posts = pagy(Project.order("created_at DESC"), items: 6)
  end

  def articles
    @pagy, @a_posts = pagy(Article.order("created_at DESC"), items: 6)
  end

  def experience

  end

  def aboutme

  end

end
