class ServiceRequest < ApplicationRecord
  belongs_to :service_provider
  belongs_to :zone
  belongs_to :category
end
