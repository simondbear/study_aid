class ExercisesController < ApplicationController

  before_action :set_screen

  def set_screen 
    @current_screen = "exercises"
  end

  def index
    @exercises = Exercise.all
  end

  def show
    @exercise = Exercise.find( params[:id] )
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.create :name => params[:exercise][:description][:difficulty]
  end

  def edit
    @exercise = Exercise.find( params[:id] )
  end

  def update
    @exercise = Exercise.find( params[:id] )
    @exercise = Exercise.update :name => params[:exercise][:description][:difficulty]
  end

  def destroy
    @exercise = Exercise.find( params[:id] )
    @subject.destroy
    redirect_to exercise_path
  end
end

     