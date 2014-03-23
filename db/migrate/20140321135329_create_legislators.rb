class CreateLegislators < ActiveRecord::Migration
  def change
    create_table :legislators do |t|
      t.string :name
      t.string :age
      t.string :constituency_id
      t.string :party_id

      t.timestamps
    end
  end
end
