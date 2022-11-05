class Zone < ApplicationRecord
  has_many :service_provider_action_zones, dependent: :destroy
  has_many :service_providers, through: :service_provider_action_zones
end
