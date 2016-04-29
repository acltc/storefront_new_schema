class ProductsController < ApplicationController

def index
  @products = Product.all
  if params[:sort] && params[:sort_order]
    @products = Product.order(params[:sort] => params[:sort_order])
  end
  if params[:discount]
    @products = Product.where("price < ?", 100)
  end
end

def show
  if params[:id] == "random"
    @product = Product.all.sample
  else
  @product = Product.find_by(id: params[:id])
  end
end

def new
end
def create
  @product = Product.create(id: params[:id], name: params[:name], price: params[:price], image: params[:image], description: params[:description], rating: params[:rating])
  flash[:success] = "Taco made!"
  redirect_to "/products/#{@product.id}"
end

def edit
  @product = Product.find_by(id: params[:id])
end

def update
  @product = Product.find_by(id: params[:id])
  @product.update(id: params[:id], name: params[:name], price: params[:price], image: params[:image], description: params[:description], rating: params[:rating])
  flash[:success] = "This taco has been updated!"
  redirect_to "/products/#{@product.id}"
end

def destroy
  @product = Product.find_by(id: params[:id])
  @product.destroy
  flash[:warning] = "Taco destroyed!"
  redirect_to "/"
end

 def search
    search_term = params[:search]
    @products = Product.where("name LIKE ? OR description LIKE ?", "%#{search_term}%", "%#{search_term}%")
    render :index
  end


end
