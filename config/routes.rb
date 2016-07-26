Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "welcome#index"
resources :welcome 
resources :studios 
get "/api/studios/brickell" => "studio#brickell"
get "/api/studios/downtown" => "studio#downtown"
get "/api/studios/wynwood" => "studio#wynwood"
get "/api/studios/yoga" => "studio#yoga"
get "/api/studios/barre" => "studio#barre"
get "/api/studios/boxing" => "studio#boxing"
get "/api/studios/pilates" => "studio#pilates"



scope "/api" do
resources :studios
end
end

