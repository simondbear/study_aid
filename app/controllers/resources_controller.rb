class ResourcesController < ApplicationController
  
  before_action :set_screen

  def set_screen 
    @current_screen = "resources"
  end

  def index
    if params[:subject_id].present?
      @subject = Subject.find params[:subject_id]
      @resources = @subject.resources
    else
      @resources = Resource.all
    end
  end

  def show
    @resource = Resource.find( params[:id] )
  end

  def new
    @resource = Resource.new
  end

  def create
    @resource = Resource.create :name => params[:resource][:name][:description] [:url][:content][:subject_id]
  end

  def edit
    @resource = Resource.find( params[:id] )
  end

  def update
    @resource = Resource.find( params[:id] )
    @resource = Resource.update :name => params[:resource][:name][:description] [:url][:content][:subject_id]
  end
  
  def destroy
    @resource = Resource.find( params[:id] )
    @subject.destroy
    redirect_to subjects_path
  end
end
