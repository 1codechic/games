Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  get '/fortunes' => 'api/example_pages#fortune_teller'
  get '/lotto' => 'api/example_pages#lottery'
end
