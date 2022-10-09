class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :family_name
      t.string :city
      t.string :address
      t.string :tel
      t.string :bank_name
      t.string :bank_shop
      t.string :bank_type
      t.string :bank_num
      t.string :bank_owner

      t.timestamps
    end
  end
end
