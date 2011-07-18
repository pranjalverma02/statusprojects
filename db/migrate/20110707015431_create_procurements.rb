class CreateProcurements < ActiveRecord::Migration
  def self.up
    create_table :procurements do |t|
      t.string :name
      t.string :item_description
      t.string :pr_no
      t.decimal :amount
      t.text :status
      t.string :report_date

      t.timestamps
    end
  end

  def self.down
    drop_table :procurements
  end
end
