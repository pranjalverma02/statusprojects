class CreateFields < ActiveRecord::Migration
  def self.up
    create_table :fields do |t|
      t.string :name
      t.string :existing_nos
      t.string :change_in_nos
      t.string :availability_percentage
      t.string :downtime_hrs
      t.string :report_date

      t.timestamps
    end
  end

  def self.down
    drop_table :fields
  end
end
