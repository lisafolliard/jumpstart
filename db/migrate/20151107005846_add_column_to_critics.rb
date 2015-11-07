class AddColumnToCritics < ActiveRecord::Migration
  def change
    add_column :critics, :school, :string
  end
end
