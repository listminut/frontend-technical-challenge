require 'swagger_helper'

RSpec.describe 'Categories API', type: :request do

  path '/categories' do

    get('list categories') do
      produces 'application/json'
      consumes 'application/json'
      tags 'Categories'
  
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
