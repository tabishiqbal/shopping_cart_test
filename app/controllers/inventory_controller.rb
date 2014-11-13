class InventoryController < ApplicationController
  def index
    @tools = Tool.order(:description)
  end
end
