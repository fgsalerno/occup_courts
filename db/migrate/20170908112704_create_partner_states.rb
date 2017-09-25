class CreatePartnerStates < ActiveRecord::Migration[5.1]
  def change
    create_table :partner_states do |t|
      t.string :desc

      t.timestamps
    end
  end
end
