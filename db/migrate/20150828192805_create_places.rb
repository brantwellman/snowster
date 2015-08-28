class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|

      t.string :name
      t.text :description
      t.string :address
      t.string :country
      t.string :state
      	
      t.timestamps
    end
  end
end
