# Outlines are provided from the database upon login
#Outlines change when new stories change
#Outlines change every ten contributions
class OutlinesController < ApplicationController
  before_action :set_outline, only: [:update, :destroy]

  # GET outlines
  def index
    outlines = Outline.all

    render json: outlines
  end

  # GET outlines/1
  def show
    outline = outline.find(params[:id])

    render json: outline
  end

  # POST outlines
  def create
    outline = current_user.outlines.new.(outline_params) #makes this, this user'soutline.

    if outline.save
      render json: outline, status: :created, location: outline
    else
      render json: outline.errors, status: :unprocessable_entity
    end
  end

  # PATCH outlines/1
  def update
    if @outline.update(outline_params)
      head :no_content
    else
      render json: outline.errors, status: :unprocessable_entity
    end
  end

  # DELETE outlines/1
  def destroy
    outline.destroy

    head :no_content
  end

  def set_outline
    outline = current_user.outlines.find(params[:id])
  end

  def outline_params
    params.require(:theme).permit(:setting, :subject)
  end

  private :set_outline, :outline_params
end

