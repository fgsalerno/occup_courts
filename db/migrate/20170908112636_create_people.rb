class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :ape_nombre
      t.bigint :dni_cuil
      t.string :email

      t.timestamps
    end
  end
end
