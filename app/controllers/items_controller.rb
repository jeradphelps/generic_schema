class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    # todo "helmet" should be dynamic obviously
    last_item_cat = ItemCategory.last
    @item = Item.new(:item_category_id => last_item_cat.id)

    @item.item_category.item_fields.each do |item_field|
      @item.item_field_values.build(:item_field_id => item_field.id)
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
