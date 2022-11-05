require 'swagger_helper'

RSpec.describe 'Service Requests API', type: :request do

  path '/service_requests' do

    post('create service_request') do
      produces 'application/json'
      consumes 'application/json'
      tags 'Service Requests'

      parameter name: :service_request, in: :body, schema: {
        type: :object,
        properties: {
          service_request: {
            type: :object,
            properties: {
              service_provider_id: { type: :integer },
              zone_id: { type: :integer },
              category_id: { type: :integer },
              title: { type: :string },
              description: { type: :string },
            },
            required: %i[service_provider_id zone_id category_id title description]
          }
        }
      }

      response(201, 'successful') do
        let(:service_request) do
          {
            service_request: attributes_for(:service_request,
              service_provider_id: create(:service_provider).id,
              zone_id: create(:zone).id,
              category_id: create(:category).id
            )
          }
        end

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

  path '/service_requests/{id}' do

    let(:id) { create(:service_request).id }

    # You'll want to customize the parameter types...
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show service_request') do
      produces 'application/json'
      consumes 'application/json'
      tags 'Service Requests'
  
      response(200, 'successful') do

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

    patch('update service_request') do
      tags 'Service Requests'
      produces 'application/json'
      consumes 'application/json'

      parameter name: :service_request, in: :body, schema: {
        type: :object,
        properties: {
          service_request: {
            type: :object,
            properties: {
              service_provider_id: { type: :integer },
              zone_id: { type: :integer },
              category_id: { type: :integer },
              title: { type: :string },
              description: { type: :string },
            },
            required: %i[service_provider_id zone_id category_id title description]
          }
        }
      }      

      let(:service_request) do
        {
          service_request: {
            title: 'New Title' 
          }
        }
      end      
  
      response(200, 'successful') do

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

    delete('delete service_request') do
      tags 'Service Requests'
      produces 'application/json'
      consumes 'application/json'
  
      response(204, 'successful') do
        run_test!
      end
    end
  end
end
