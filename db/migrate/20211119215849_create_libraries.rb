class CreateLibraries < ActiveRecord::Migration[6.1]
  def change
    create_table :libraries do |t|
      t.string :name
      t.string :street_address
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
