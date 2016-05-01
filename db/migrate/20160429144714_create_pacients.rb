class CreatePacients < ActiveRecord::Migration
  def change
    create_table :pacients do |t|
      t.string :fname
      t.string :lname

      t.timestamps null: false
    end
  end
end
