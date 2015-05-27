Rails.application.routes.draw do
  get '/vanity' =>'vanity#index'
  get '/vanity/participant/:id' => 'vanity#participant'
  post '/vanity/complete'
  post '/vanity/chooses'
  post '/vanity/reset'
  post '/vanity/add_participant'
  get '/vanity/image'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      post '/variants' => 'ab_testings#variants'
      post '/track' => 'ab_testings#track'
    end
  end
end
