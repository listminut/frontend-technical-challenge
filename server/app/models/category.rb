class Category < ApplicationRecord
  has_many :service_provider_categories, dependent: :destroy
  has_many :service_providers, through: :service_provider_categories
end
