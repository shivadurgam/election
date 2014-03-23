class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :name
      t.string :president
      t.date :established_year

      t.timestamps
    end
  end
end
