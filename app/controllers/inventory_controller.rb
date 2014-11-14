class InventoryController < ApplicationController
  include CurrentIssuance
  before_action :set_issuance
  def index
    @tools = Tool.order(:description)
  end
end
