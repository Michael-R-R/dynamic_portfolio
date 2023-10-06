class ArticlesController < ApplicationController

    before_action(:create_access, only: [:new, :create])
    before_action(:edit_access, only: [:edit, :update])
    before_action(:delete_access, only: [:destroy])

    def show
        @post = Article.find(params[:id])
    end

    def new
        @post = Article.new
    end

    def create
        @post = Article.new(article_params)
        @post.user_id = current_user().id

        if @post.save
            redirect_to(@post)
        else
            flash.now[:danger] = "Invalid post"
            redirect_to("new", status: :unprocessable_entity)
        end
    end

    def edit
        @post = Article.find(params[:id])
    end

    def update
        @post = Article.find(params[:id])

        if @post.update(article_params)
            flash[:success] = "Post updated"
            redirect_to(@post, status: :see_other)
        else
            flash.now[:danger] = "Invalid post"
            render("edit", status: :unprocessable_entity)
        end
    end

    def destroy
        Article.find(params[:id]).destroy
        redirect_to(articles_path, status: :see_other)
    end

    private

    def article_params
        params.require(:article).permit(:title, :thumbnail, :content)
    end

    def create_access
        redirect_to(root_url) unless can_create?(current_user())
    end

    def edit_access
        redirect_to(root_url) unless can_edit?(current_user())
    end

    def delete_access
        redirect_to(root_url) unless can_delete?(current_user())
    end

end
