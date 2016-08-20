Rails.application.routes.draw do

  root 'restaurants#index'

  resources :restaurants do
    resources :foods
  end

#   Prefix Verb   URI Pattern                                          Controller#Action
#                 root GET    /                                                    main#index
#     restaurant_foods GET    /restaurants/:restaurant_id/foods(.:format)          foods#index
#                      POST   /restaurants/:restaurant_id/foods(.:format)          foods#create
#  new_restaurant_food GET    /restaurants/:restaurant_id/foods/new(.:format)      foods#new
# edit_restaurant_food GET    /restaurants/:restaurant_id/foods/:id/edit(.:format) foods#edit
#      restaurant_food GET    /restaurants/:restaurant_id/foods/:id(.:format)      foods#show
#                      PATCH  /restaurants/:restaurant_id/foods/:id(.:format)      foods#update
#                      PUT    /restaurants/:restaurant_id/foods/:id(.:format)      foods#update
#                      DELETE /restaurants/:restaurant_id/foods/:id(.:format)      foods#destroy
#          restaurants GET    /restaurants(.:format)                               restaurants#index
#                      POST   /restaurants(.:format)                               restaurants#create
#       new_restaurant GET    /restaurants/new(.:format)                           restaurants#new
#      edit_restaurant GET    /restaurants/:id/edit(.:format)                      restaurants#edit
#           restaurant GET    /restaurants/:id(.:format)                           restaurants#show
#                      PATCH  /restaurants/:id(.:format)                           restaurants#update
#                      PUT    /restaurants/:id(.:format)                           restaurants#update
#                      DELETE /restaurants/:id(.:format)                           restaurants#destroy

end
