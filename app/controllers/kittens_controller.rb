class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
  end

  def show
    @kitten = Kitten.find(params[:id])
  end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.build

    if @kitten.save
      flash[:success] = "New Kitten successfully created. How soft and fuzzy!"
      redirect_to @kitten
    else
      flash.now[:danger] = "Come on... It's just a kitten. You can do this!"
      render 'new'
    end
  end

  def edit
    @kitten = Kitten.find(params[:id])
  end

  def update
    @kitten = Kitten.find(params[:id])
  
    if @kitten.update
      flash[:success] = "Your Kitten was successfully updated. How soft and fuzzy!"
      redirect_to @kitten
    else
      flash.now[:danger] = "Come on... It's just a kitten. You can do this!"
      'edit'
    end
  end

  def destroy
    @kitten = Kitten.find(params[:id])
  end
end
