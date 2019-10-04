class CreateLegislatorIntroducedBills < ActiveRecord::Migration[6.0]
  def change
    create_table :legislator_introduced_bills do |t|
      t.string :legislator_key
      t.string :legislator_id
      t.string :branch
      t.string :bill_id
      t.timestamps
    end
  end
end
