class MyReferencesController < ApplicationController
  def index
  @my_references = My_reference.all
  end

  def new
    @my_reference = My_reference.new()
  end

  def create
    @my_reference = My_reference.new(my_reference_params)
    @my_reference.save()
    respond_to do |format|
      format.html { redirect_to my_references_path }
      format.js
    end
  end

  private
    def my_reference_params
      params.require(:my_reference).permit(:name, :title, :phone, :address, :relationship)
    end
end
