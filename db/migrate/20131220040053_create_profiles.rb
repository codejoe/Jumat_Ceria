class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :profileable_id
      t.integer :profileable_type
      t.string :name
      t.string :avatar
      t.text :about

      t.timestamps
    end
  end
end
