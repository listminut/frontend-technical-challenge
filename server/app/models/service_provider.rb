class ServiceProvider < ApplicationRecord
  include PgSearch::Model

  has_many :service_provider_action_zones, dependent: :destroy
  has_many :action_zones, through: :service_provider_action_zones, source: :zone
  has_many :service_provider_categories, dependent: :destroy
  has_many :categories, through: :service_provider_categories

  pg_search_scope :search, against: %i[first_name last_name bio professional],
                           associated_against: { action_zones: :name, categories: :name }
end
