class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.column :author, :string
      t.column :review, :string
      t.column :image_id, :integer

      t.timestamps
    end
  end
end
