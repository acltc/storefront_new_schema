class ProductsController < ApplicationController

def index
  @tacos = Taco.all
  
end

def show
  @taco = Taco.find_by(id: params[:id])
end

def new
end
def create
  @taco = Taco.create(id: params[:id],name: params[:name],price: params[:price],image: params[:image],description: params[:description],rating: params[:rating])
  flash[:success] = "Taco made!"
  redirect_to "/tacos/#{@taco.id}"
end

def edit
  @taco = Taco.find_by(id: params[:id])
end

def update
  @taco = Taco.find_by(id: params[:id])
  @taco.update(id: params[:id],name: params[:name],price: params[:price],image: params[:image],description: params[:description],rating: params[:rating])
  flash[:success] = "This taco has been updated!"
  redirect_to "/tacos/#{@taco.id}"
end

def destroy
  @taco = Taco.find_by(id: params[:id])
  @taco.destroy
  flash[:warning] = "Taco destroyed!"
  redirect_to "/"
end


end
