class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.integer :item_id, index: true
      t.integer :user_id, index: true
      t.date :borrowed_on 
      t.date :returned_on
      t.timestamps
    end
  end
end
