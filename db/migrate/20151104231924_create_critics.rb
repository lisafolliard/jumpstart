class CreateCritics < ActiveRecord::Migration
  def change
    create_table :critics do |t|
      t.string "name"
      t.string "description"
      t.string "address"
      t.float "latitude"
      t.float "longitude"

      t.timestamps
    end
  end
end
