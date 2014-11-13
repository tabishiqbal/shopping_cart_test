class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string :tool_barcode
      t.text :description
      t.integer :quantity, default: 1

      t.timestamps
    end
  end
end
