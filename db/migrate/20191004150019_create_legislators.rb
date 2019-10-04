class CreateLegislators < ActiveRecord::Migration[6.0]
  def change
    create_table :legislators do |t|
      t.string :branch
      t.string :legislator_id
      t.string :legislator_key
      t.integer :district
      t.integer :seat
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :spouse
      t.string :address
      t.string :leg_room
      t.string :city
      t.string :state
      t.string :zip
      t.string :tel
      t.string :email
      t.string :party
      t.string :senate_terms
      t.string :house_terms
      t.string :occupation
      t.timestamps
    end
  end
end
