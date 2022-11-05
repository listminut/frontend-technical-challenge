class ServiceProviderCategory < ApplicationRecord
  belongs_to :category
  belongs_to :service_provider
end
