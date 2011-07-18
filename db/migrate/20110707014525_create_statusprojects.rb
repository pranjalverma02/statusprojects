class CreateStatusprojects < ActiveRecord::Migration
  def self.up
    create_table :statusprojects do |t|
      t.string :name
      t.string :cost
      t.string :award_date
      t.string :schd_date_of_compl
      t.text :progress
      t.string :report_date

      t.timestamps
    end
  end

  def self.down
    drop_table :statusprojects
  end
end
