class CreateServiceProviderActionZones < ActiveRecord::Migration[6.1]
  def change
    create_table :service_provider_action_zones do |t|
      t.references :service_provider, null: false, foreign_key: true
      t.references :zone, null: false, foreign_key: true

      t.timestamps
    end
  end
end
