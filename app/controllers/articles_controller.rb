class ArticlesController < ApplicationController

    def show
        @post = Article.find(params[:id])
    end

    def new
        user = current_user()
        unless can_create?(user)
            redirect_to(root_url)
            return
        end

        @post = Article.new
    end

    def create
        user = current_user()
        unless can_create?(user)
            redirect_to(root_url)
            return
        end

        @post = Article.new(article_params)
        @post.user_id = user.id

        if @post.save
            redirect_to(@post)
        else
            flash.now[:danger] = "Invalid post"
            redirect_to("new", status: :unprocessable_entity)
        end
    end

    def edit
        @post = Article.find(params[:id])

        user = current_user()
        unless can_edit?(user)
            redirect_to(root_url)
        end
    end

    def update
        @post = Article.find(params[:id])

        user = current_user()
        unless can_edit?(user)
            redirect_to(root_url)
            return
        end

        if @post.update(article_params)
            flash[:success] = "Post updated"
            redirect_to(@post, status: :see_other)
        else
            flash.now[:danger] = "Invalid post"
            render("edit", status: :unprocessable_entity)
        end
    end

    def destroy
        user = current_user()
        unless can_delete?(user)
            redirect_to(root_url)
            return
        end

        Article.find(params[:id]).destroy
        flash[:success] = "Post Deleted"
        redirect_to(articles_path, status: :see_other)
    end

    private

    def article_params
        params.require(:article).permit(:title, :thumbnail, :body)
    end

end
