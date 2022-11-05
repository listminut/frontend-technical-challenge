require 'swagger_helper'

RSpec.describe 'Service Providers API', type: :request do

  path '/service_providers' do

    get('list service_providers') do
      produces 'application/json'
      consumes 'application/json'
      tags 'Service Providers'

      parameter name: :page, in: :query, type: :integer, description: 'Page number'
      parameter name: :per_page, in: :query, type: :integer, description: 'Number of records per page', default: 10
      parameter name: :query, in: :query, type: :string, description: 'Search query on first name, last name, bio, category names and action zone names'
      parameter name: :category_ids, in: :query, type: :array, items: { type: :integer }, description: 'Category ids'
      parameter name: :action_zone_ids, in: :query, type: :array, items: { type: :integer }, description: 'Action zone ids'
      
      response(200, 'successful') do
        schema type: :array,
          items: {
            type: :object,
            properties: {
              id: { type: :integer },
              first_name: { type: :string },
              last_name: { type: :string },
              bio: { type: :string },
              created_at: { type: :string },
              updated_at: { type: :string },
              category_ids: { type: :array, items: { type: :integer } },
              zone_ids: { type: :array, items: { type: :integer } },
            },
            required: %i[id first_name last_name bio created_at updated_at category_ids zone_ids]
          }



        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
