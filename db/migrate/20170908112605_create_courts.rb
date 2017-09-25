class CreateCourts < ActiveRecord::Migration[5.1]
  def change
    create_table :courts do |t|
      t.string :nombre
      t.string :observacion

      t.timestamps
    end
  end
end
