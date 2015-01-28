class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
      t.string :name
      t.string :image_url
      t.text :bio
      t.string :dob

      t.timestamps null: false
    end
  end
end
