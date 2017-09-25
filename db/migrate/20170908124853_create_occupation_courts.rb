class CreateOccupationCourts < ActiveRecord::Migration[5.1]
  def change
    create_table :occupation_courts do |t|
      t.datetime :dia_hora_inicio
      t.datetime :dia_hora_fin
      t.string :obsv
      t.references :court, foreign_key: true
      t.references :partner, foreign_key: true
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
