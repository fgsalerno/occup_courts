class AddImporteToOccupationCourts < ActiveRecord::Migration[5.1]
  def change
    add_column :occupation_courts, :importe, :decimal
    add_column :occupation_courts, :pagado, :boolean
  end
end
