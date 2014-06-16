class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.integer :list_item_id

      t.timestamps
    end
  end
end
