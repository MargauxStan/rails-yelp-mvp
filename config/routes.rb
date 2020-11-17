Rails.application.routes.draw do

  resources :restaurants, only: [ :index, :new, :create, :show ] do
    resources :reviews, only: [:index, :create]
  end
end

# Prefix Verb URI Pattern                                       Controller#Action
# restaurant_reviews GET  /restaurants/:restaurant_id/reviews(.:format)     reviews#index
#                    POST /restaurants/:restaurant_id/reviews(.:format)     reviews#create
# new_restaurant_review GET  /restaurants/:restaurant_id/reviews/new(.:format) reviews#new
#        restaurants GET  /restaurants(.:format)                            restaurants#index
#                    POST /restaurants(.:format)                            restaurants#create
#     new_restaurant GET  /restaurants/new(.:format)                        restaurants#new
#         restaurant GET  /restaurants/:id(.:format)                        restaurants#show                  reviews#new
