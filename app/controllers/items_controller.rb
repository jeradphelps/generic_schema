class ItemsController < ApplicationController
  def index
    @item_category = ItemCategory.find(params[:item_category_id])
    @items = Item.where(:item_category_id => params[:item_category_id])
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    last_item_cat = ItemCategory.last
    @item = Item.new(:item_category_id => last_item_cat.id)

    @item.item_category.item_category_attributes.each do |item_category_attribute|
      @item.item_attribute_values.build(:item_category_attribute_id => item_category_attribute.id)
    end
  end

  def create
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
    #todo
  end

  def update
    #todo
  end

  def destroy
    #todo
  end
end
