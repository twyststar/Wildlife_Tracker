class ModifySightings < ActiveRecord::Migration[5.1]
  def change
    add_column(:sightings, :description, :string)
    add_column(:sightings, :reporter, :string)
  
  end
end
