# app/controllers/directors_controller.rb

class DirectorsController < ApplicationController
  def show
    @director = Director.find(params[:id])
  end
  
  def index
    @directors = Director.all
  end

  def youngest
    @youngest_director = Director.where.not(dob: nil).order(dob: :desc).first
  end

  def eldest
    @eldest_director = Director.where.not(dob: nil).order(:dob).first
  end
end
