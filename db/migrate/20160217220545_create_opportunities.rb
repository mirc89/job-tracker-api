class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.string :name
      t.string :position
      t.text :description

      t.timestamps null: false
    end
  end
end
