class CreateBills < ActiveRecord::Migration[6.0]
  def change
    create_table :bills do |t|
      t.string :bill_id
      t.string :alternate_bill_id
      t.string :bill_name
      t.string :bill_text_url
      t.string :bill_summary_url
      t.string :bill_sponsor
      t.string :branch
      t.datetime :action_date
      t.string :action_text
      t.text :bill_text
      t.text :bill_summary
      t.timestamps
    end
  end
end
