class CreateInfousers < ActiveRecord::Migration[7.0]
  def change
    create_table :infousers do |t|
      t.string :city
      t.string :state
      t.string :country
      t.string :favorite_marvel_character
      t.string :favorite_marvel_comic
      t.date :created_date
      t.date :updated_date
      t.references :User, null: false, foreign_key: true

      t.timestamps
    end
  end
end
