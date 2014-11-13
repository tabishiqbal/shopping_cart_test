class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :tool, index: true
      t.belongs_to :issuance, index: true

      t.timestamps
    end
  end
end
