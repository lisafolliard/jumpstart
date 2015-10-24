class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.attachment :image
      t.column :description, :string
      t.column :user_id, :integer

      t.timestamps
    end
  end
end
