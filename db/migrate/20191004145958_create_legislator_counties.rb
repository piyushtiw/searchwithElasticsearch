class CreateLegislatorCounties < ActiveRecord::Migration[6.0]
  def change
    create_table :legislator_counties do |t|
      t.string :county
      t.string :district
      t.string :legislator_key
      t.string :branch
      t.string :first_name
      t.string :last_name
      t.timestamps
    end
  end
end
