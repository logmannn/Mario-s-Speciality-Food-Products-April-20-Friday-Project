class ProductsController < ApplicationController
  def home
    @products = Product.all
    @alphaSort = @products.sort_by {|obj| obj.name}
    render :home
  end

  def index
    @products = Product.all
    render :index
  end

  def show
    @product = Product.find(params[:id])
    render :show
  end

  def new
    @product = Product.new
    render :new
  end

  def create
  # product_params needed for product to appear. otherwise it will come up as blank
  # based on lessons (@product) can be added at the end of products_path but still needs (product_params to work)
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product successfully added~"
      redirect_to  products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    render :edit
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      flash[:notice] = "Item destroyed"
      redirect_to products_path
    else
      render :new
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :image, :country_of_origin, :cost)
  end

end
