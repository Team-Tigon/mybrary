class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :state

      t.timestamps
    end
  end
end
