class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.belongs_to :list
      t.string :description
      t.timestamps
    end
  end
end
