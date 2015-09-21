class BubblesController < ApplicationController
  before_action :find_bubble, only: [:show, :edit, :update, :destroy]
  def index
  	@bubbles = Bubble.all.order("created_at DESC")
  end

  def new
  	@bubble = Bubble.new
  end

  def create
  	@bubble = Bubble.new(bubble_params)
  	if @bubble.save
  		redirect_to @bubble
  	else
  		render 'new'
  	end
  end

  def show
  end

  def edit
  end

  def update
  	if @bubble.update(bubble_params)
  		redirect_to @bubble
  	else
  		render 'edit'
  	end
  end

  def destroy
    @bubble.destroy
    redirect_to root_path
  end

  private

  def find_bubble
  	  	@bubble = Bubble.find(params[:id])
	end


  def bubble_params
  	params.require(:bubble).permit(:title, :body)
  end
end
