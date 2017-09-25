class CreatePartners < ActiveRecord::Migration[5.1]
  def change
    create_table :partners do |t|
      t.string :desc
      t.references :partner_state, foreign_key: true
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
