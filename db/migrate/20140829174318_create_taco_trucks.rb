class CreateTacoTrucks < ActiveRecord::Migration
  def change
    create_table :taco_trucks do |t|
      t.string :name
      t.string :rating
      t.integer :roach_count
      t.string :price

      t.timestamps
    end
  end
end
