class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :state
      t.string :name
      t.text :description
      t.string :url
      t.integer :user_id, index: true
      t.timestamps
    end
  end
end
