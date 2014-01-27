class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    # todo "helmet" should be dynamic obviously
    helmet = ItemCategory.find_by_name("Helmet")
    @item = Item.new(:item_category_id => helmet.id)

    # @item.item_category.item_fields.each do |item_field|
    #   item_field.item_field_values.build(:item => @item)
    # end


    @item.item_category.item_fields.each do |item_field|
      @item.item_field_values.build(:item_field_id => item_field.id)
    end
  end

  def create
    # binding.pry
    @item = Item.new(params[:item])

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
