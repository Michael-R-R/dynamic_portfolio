class ProjectsController < ApplicationController
    def show
        @post = Project.find(params[:id])
    end

    def new
        user = current_user()

        if authenticate_user?(user)
            @post = Project.new
        else
            redirect_to(root_url)
        end
    end

    def create
        @post = Project.new(project_params)
        @post.user_id = current_user().id

        if @post.save
            redirect_to(@post)
        else
            flash.now[:danger] = "Invalid title/thumbnail"
            render("new", status: :unprocessable_entity)
        end
    end

    def edit

    end

    def update

    end

    def destroy

    end

    private

    def project_params
        params.require(:project).permit(:title, :thumbnail, :body)
    end
end
