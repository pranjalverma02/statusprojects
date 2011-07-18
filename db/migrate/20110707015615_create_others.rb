class CreateOthers < ActiveRecord::Migration
  def self.up
    create_table :others do |t|
      t.string :name
      t.text :status
      t.string :report_date

      t.timestamps
    end
  end

  def self.down
    drop_table :others
  end
end
