class ProjectsController < ApplicationController
    def show
        @post = Project.find(params[:id])
    end

    def new
        user = current_user()
        unless can_create?(user)
            redirect_to(root_url)
            return
        end

        @post = Project.new
    end

    def create
        user = current_user()
        unless can_create?(user)
            redirect_to(root_url)
            return
        end

        @post = Project.new(project_params)
        @post.user_id = user.id

        if @post.save
            redirect_to(@post)
        else
            flash.now[:danger] = "Invalid post"
            render("new", status: :unprocessable_entity)
        end
    end

    def edit
        @post = Project.find(params[:id])

        user = current_user()
        unless can_edit?(user)
            redirect_to(@post)
        end
    end

    def update
        @post = Project.find(params[:id])

        user = current_user()
        unless can_edit?(user)
            redirect_to(@post)
            return
        end

        if @post.update(project_params)
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

        Project.find(params[:id]).destroy
        flash[:success] = "Post Deleted"
        redirect_to(projects_path, status: :see_other)
    end

    private

    def project_params
        params.require(:project).permit(:title, :thumbnail, :body)
    end
end
