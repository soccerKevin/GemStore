class CreateJewels < ActiveRecord::Migration
  def change
    create_table :jewels do |t|
      t.string :name
      t.decimal :price, :precision => 12, :scale => 2

      t.timestamps null: false
    end
  end
end
