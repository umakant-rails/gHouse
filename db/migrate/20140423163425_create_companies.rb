class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :user_id
      t.string :registration_no
      t.string :street
      t.string :city
      t.string :state
      t.string :country
      t.string :zipcode
      t.string :phone
      t.string :latitude
      t.string :longitude
      t.timestamps
    end
  end
end
