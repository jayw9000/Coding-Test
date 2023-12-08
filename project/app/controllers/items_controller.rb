# app/controllers/items_controller.rb
class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy, :soft_delete, :restore]

  def soft_delete
    @item.soft_delete
    redirect_to items_path, notice: 'Item was soft deleted.'
  end

  def restore
    @item.restore
    redirect_to items_path, notice: 'Item was restored.'
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end
end