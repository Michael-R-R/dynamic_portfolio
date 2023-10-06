class ProjectsController < ApplicationController

    before_action(:create_access, only: [:new, :create])
    before_action(:edit_access, only: [:edit, :update])
    before_action(:delete_access, only: [:destroy])

    def show
        @post = Project.find(params[:id])
    end

    def new
        @post = Project.new
    end

    def create
        @post = Project.new(project_params)
        @post.user_id = current_user().id

        if @post.save
            redirect_to(@post)
        else
            flash.now[:danger] = "Invalid post"
            render("new", status: :unprocessable_entity)
        end
    end

    def edit
        @post = Project.find(params[:id])
    end

    def update
        @post = Project.find(params[:id])

        if @post.update(project_params)
            flash[:success] = "Post updated"
            redirect_to(@post, status: :see_other)
        else
            flash.now[:danger] = "Invalid post"
            render("edit", status: :unprocessable_entity)
        end
    end

    def destroy
        Project.find(params[:id]).destroy
        redirect_to(projects_path, status: :see_other)
    end

    private

    def project_params
        params.require(:project).permit(:title, :thumbnail, :content)
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
