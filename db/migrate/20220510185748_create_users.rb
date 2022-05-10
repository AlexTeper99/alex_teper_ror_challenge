class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.string :gender
      t.integer :age
      t.date :created_date
      t.date :updated_date

      t.timestamps
    end
  end
end
