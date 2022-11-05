class ServiceProvidersController < ApplicationController
  def index
    @service_providers = ServiceProvider.eager_load(:categories, :action_zones)
    @service_providers = @service_providers.where(categories: { id: params[:category_ids] }) if params[:category_ids].present?
    @service_providers = @service_providers.where(action_zones: { id: params[:action_zone_ids] }) if params[:action_zone_ids].present?
    @service_providers = @service_providers.search(params[:query])  if params[:query].present?
    @service_providers = @service_providers.paginate(page: params[:page], per_page: params.fetch(:per_page, 10)) if params[:page].present?
  end
end
