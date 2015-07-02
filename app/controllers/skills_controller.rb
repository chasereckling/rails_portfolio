class SkillsController < ApplicationController
  def index
    @skills = Skill.all
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def new
    @skill = Skill.new()
  end

  def create
    @skill = Skill.new(skill_params)
    if @skill.save()
      redirect_to skills_path
    else
      render :new
    end
  end

  private
    def skill_params
      params.require(:skill).permit(:name, :description)
    end
end
