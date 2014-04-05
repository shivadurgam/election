class CreateConstituencies < ActiveRecord::Migration
  def change
    create_table :constituencies do |t|
      t.string :name
      t.string :district
      t.string :state

      t.timestamps
    end

    change_table :constituencies do |t|
    	t.rename :district, :category
    	t.rename :state, :mla_constituencies
    end
  end

end
