class ItemCategoriesController < ApplicationController
  def index
    @item_categories = ItemCategory.all
  end

  def show
    @item_category = ItemCategory.find(params[:id])
  end

  def new
    # todo This should be dynamic obviously
    @item_category = ItemCategory.new
    2.times { @item_category.item_fields.build }
  end

  def create
    @item_category = ItemCategory.new(params[:item_category])

    respond_to do |format|
      if @item_category.save
        format.html { redirect_to @item_category, notice: 'Item Category was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def edit
    @item_category = ItemCategory.find(params[:id])
  end

  def update
    @item_category = ItemCategory.find(params[:id])

    respond_to do |format|
      if @item_category.update_attributes(params[:item_category])
        format.html { redirect_to @item_category, notice: 'Item Category was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @item_category = ItemCategory.find(params[:id])
    @item_category.destroy

    respond_to do |format|
      format.html { redirect_to item_categories_path }
    end
  end
end
