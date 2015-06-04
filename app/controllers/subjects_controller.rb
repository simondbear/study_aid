class SubjectsController < ApplicationController

  before_action :set_screen

  def set_screen 
    @current_screen = "subjects"
  end


  def index
    # Show all available subjects
    @subjects = Subject.all
  end

  def show
    @subject = Subject.find( params[:id] )
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.create :name => params[:subject][:name][:image_url]
  end

  def edit
    @subject = Subject.find( params[:id] )
  end

  def update
    @subject = Subject.find( params[:id] )
    @subject.update :name => params[:subject][:name][:image_url]
  end

  def destroy
    @subject = Subject.find( params[:id] )
    @subject.destroy
    redirect_to subjects_path
  end
end