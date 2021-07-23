Rails.application.routes.draw do
 resources :songs, only: [:index, :show]
 resources :super_fans, only: [:destroy]

                        # controller#method/action
 get '/song/top_charts', to: "songs#top_charts"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
