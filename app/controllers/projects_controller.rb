class ProjectsController < ApplicationController
  def new
      @skill = Skill.find(params[:skill_id])
      @project = @skill.projects.new
    end

    def show
      @skill = Skill.find(params[:skill_id])
      @project = Project.find(params[:id])
    end


  def create
    @skill = Skill.find(params[:skill_id])
    @project = @skill.projects.new(project_params)
    if @project.save
      redirect_to skill_path(@project.skill)
    else
      render :new
    end
  end

  def edit
    @skill = Skill.find(params[:skill_id])
    @project = Project.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:skill_id])
    @project = Project.find(params[:id])
    if @project.update(project_params)
      flash[:notice] = "Project successfully updated!"
      redirect_to skill_path(@project.skill)
    else
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    flash[:notice] = "Project successfully deleted."
    redirect_to skill_path(@project.skill)
  end

  private
    def project_params
      params.require(:project).permit(:name, :link, :description)
  end
end
