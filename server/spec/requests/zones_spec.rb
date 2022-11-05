require 'swagger_helper'

RSpec.describe 'Zones API', type: :request do

  path '/zones' do

    get('list zones') do
      tags 'Zones'
      produces 'application/json'
      consumes 'application/json'

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
  end
end
