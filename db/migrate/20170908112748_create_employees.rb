class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :desc
      t.references :employee_type, foreign_key: true
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
