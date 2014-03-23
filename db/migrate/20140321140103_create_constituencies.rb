class CreateConstituencies < ActiveRecord::Migration
  def change
    create_table :constituencies do |t|
      t.string :name
      t.string :district
      t.string :state

      t.timestamps
    end
  end
end
