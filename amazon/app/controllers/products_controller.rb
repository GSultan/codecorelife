class ProductsController < ApplicationController

  def new
    @product = Product.new
    @categories = Category.all
  end

  def create
    # render plain: "created!"
    product_params = params.require(:product).permit([:title, :description, :price, :category_id])
    @product = Product.new product_params
    if @product.save
      # redirect_to question_path({id: @question.id})
      # redirect_to question_path({id: @question})
      redirect_to product_path(@product)
    else
      render :new
    end

  end

  def show
    # session[:hit_count] = @hit_count
    @product = Product.find params[:id]
    # @product.hit_count += 1
    @review = Review.new
    Product.increment_counter(:hit_count, @product[:id])
    # Object.update_attribute(:only_one_field, "Some Value")
  end

  def index
    # render :nothing => true
    @products = Product.order(created_at: :desc)
  end

  def destroy
    @product = Product.find params[:id]
    @product.destroy
    redirect_to products_path
  end

  def edit
    @question = Question.find params[:id]
  end

  def update
  end


end
