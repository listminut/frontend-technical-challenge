class CreateServiceProviders < ActiveRecord::Migration[6.1]
  def change
    create_table :service_providers do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :avatar_url, null: false
      t.text :bio, null: false
      t.boolean :professional, null: false, default: false

      t.timestamps
    end
  end
end
