class CreateTable < ActiveRecord::Migration[5.1]
  def change
    create_table :animals do |t|
      t.column :species, :string
      t. column :description, :string
      t. column :endangered, :boolean
    end
    create_table :sightings do |t|
      t.column :animal_id, :integer
      t. column :region_id, :integer
      t. column :location, :string
      t.timestamps
    end
    create_table :regions do |t|
      t.column :name, :string
      t. column :description, :string
    end
  end
end
