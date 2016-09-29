class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :zip_code
      t.string :street
      t.string :neighborhood
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
