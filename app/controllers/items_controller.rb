class ItemsController < ApplicationController

  def create
    @item = Item.new(item_params)
    @item.category_id = params[:category_id]

    @item.save

    redirect to category_path(@item.category)
  end

private

  def item_params
    params.require(:item).permit(:name, :description, :price, :quantity)
  end

end
