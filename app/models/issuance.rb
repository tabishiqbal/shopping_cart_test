class Issuance < ActiveRecord::Base
  has_many :line_items, dependent: :destroy

  def add_tool(tool_id)
    current_item = line_items.find_by(tool_id: tool_id)
    if current_item
      errors.add(:tool_id, "has already been added")
    else
      current_item = line_items.build(tool_id: tool_id)
    end
    current_item
  end
end
