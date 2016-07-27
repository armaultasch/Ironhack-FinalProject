Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "welcome#index"
resources :welcome 
resources :studios 
get "/api/studios/brickell" => "studio#brickell"
get "/api/studios/downtown" => "studio#downtown"
get "/api/studios/wynwood" => "studio#wynwood"
get "/api/studios/wynwood/yoga" => "studio#yogawyn"
get "/api/studios/wynwood/barre" => "studio#barrewyn"
get "/api/studios/wynwood/boxing" => "studio#boxingwyn"
get "/api/studios/wynwood/pilates" => "studio#pilateswyn"
get "/api/studios/wynwood/cycling" => "studio#cyclewyn"
get "/api/studios/downtown/yoga" => "studio#yogadt"
get "/api/studios/downtown/barre" => "studio#barredt"
get "/api/studios/downtown/boxing" => "studio#boxingdt"
get "/api/studios/downtown/pilates" => "studio#pilatesdt"
get "/api/studios/downtown/cycling" => "studio#cycledt"
get "/api/studios/brickell/yoga" => "studio#yogabrick"
get "/api/studios/brickell/barre" => "studio#barrebrick"
get "/api/studios/brickell/boxing" => "studio#boxingbrick"
get "/api/studios/brickell/pilates" => "studio#pilatesbrick"
get "/api/studios/brickell/cycling" => "studio#cyclebrick"



scope "/api" do
resources :studios
end
end

