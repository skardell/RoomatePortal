class GroceryItemsController < ApplicationController
  before_action :set_grocery_item, only: [:show, :edit, :update, :destroy]

  # GET /grocery_items
  # GET /grocery_items.json
  def index
    @grocery_items = GroceryItem.all
  end

  # GET /grocery_items/1
  # GET /grocery_items/1.json
  def show
  end

  # GET /grocery_items/new
  def new
    @grocery_item = GroceryItem.new
  end

  # GET /grocery_items/1/edit
  def edit
  end

  # POST /grocery_items
  # POST /grocery_items.json
  def create
    @grocery_item = GroceryItem.new grocery_item_params
    @grocery_item.grocery_list = GroceryList.where(user_id: current_user.id).take

    respond_to do |format|
      if @grocery_item.save
        format.html { redirect_to grocery_lists_path }
        format.json { render :show, status: :created, location: grocery_lists_path }
      else
        format.html { render :new }
        format.json { render json: @grocery_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grocery_items/1
  # PATCH/PUT /grocery_items/1.json
  def update
    respond_to do |format|
      if @grocery_item.update(grocery_item_params)
        format.html { redirect_to @grocery_item, notice: 'Grocery item was successfully updated.' }
        format.json { render :show, status: :ok, location: @grocery_item }
      else
        format.html { render :edit }
        format.json { render json: @grocery_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grocery_items/1
  # DELETE /grocery_items/1.json
  def destroy
    @grocery_item.destroy
    respond_to do |format|
      format.html { redirect_to grocery_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grocery_item
      @grocery_item = GroceryItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grocery_item_params
      params.fetch(:grocery_item, {})
      params.require(:grocery_item).permit(:name, :amount)
    end
end
