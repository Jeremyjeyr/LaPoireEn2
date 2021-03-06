class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :set_farm
  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
    # @farm = @product.farm
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  def order
    if current_user.nil?
      redirect_to new_user_registration_path
    else
      @product = Product.find params[:id]
      @quantity = params[:quantity].to_i
      @order = current_user.add_to_order @product, @quantity
      redirect_to @order
    end
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    @product.farm = @farm

    respond_to do |format|
      if @product.save
        format.html { redirect_to farm_path(@farm), notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to farm_path(@farm), notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to farm_path(@farm), notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    def set_farm
      @farm = Farm.find(params[:farm_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      #params.fetch(:product, {})
      params.require(:product).permit(:name,:image,:price,:unit,:available_in,:avalaible_stock,:real_stock,:farm_id )
    end
end
