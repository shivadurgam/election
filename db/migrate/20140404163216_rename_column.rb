class RenameColumn < ActiveRecord::Migration
  def change
  	change_table :constituencies do |t|
    	t.rename :district, :category
    	t.rename :state, :mla_constituencies
    end
  end
end
