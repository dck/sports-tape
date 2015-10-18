class CreateSopcasts < ActiveRecord::Migration
  def change
    create_table :sopcasts do |t|
      t.string :url
      t.boolean :active

      t.timestamps
    end
  end
end
