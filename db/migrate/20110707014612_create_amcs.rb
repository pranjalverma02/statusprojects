class CreateAmcs < ActiveRecord::Migration
  def self.up
    create_table :amcs do |t|
      t.string :name
      t.string :work_firm
      t.string :cost
      t.string :period
      t.text :status

      t.timestamps
    end
  end

  def self.down
    drop_table :amcs
  end
end
