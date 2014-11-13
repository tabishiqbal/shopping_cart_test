class CreateIssuances < ActiveRecord::Migration
  def change
    create_table :issuances do |t|

      t.timestamps
    end
  end
end
