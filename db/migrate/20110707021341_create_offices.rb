class CreateOffices < ActiveRecord::Migration
  def self.up
    create_table :offices do |t|
      t.string :name
      t.string :existing_nos
      t.string :nos_deleted
      t.string :nos_added
      t.string :total
      t.string :report_date

      t.timestamps
    end
  end

  def self.down
    drop_table :offices
  end
end
