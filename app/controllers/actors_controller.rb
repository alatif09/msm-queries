# app/controllers/actors_controller.rb
class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def show
    @actor = Actor.find(params[:id])
  end
end
