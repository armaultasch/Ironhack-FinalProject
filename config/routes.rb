Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "welcome#index"
resources :welcome 

resources :studios 
get "/api/studios/brickell" => "studio#brickell"
get "/api/studios/downtown" => "studio#downtown"
get "/api/studios/wynwood" => "studio#wynwood"


get "/welcome/wynwood/yoga" => "welcome#yogawyn"
get "/welcome/wynwood/barre" => "welcome#barrewyn"
get "/welcome/wynwood/boxing" => "welcome#boxingwyn"
get "/welcome/wynwood/pilates" => "welcome#pilateswyn"
get "/welcome/wynwood/cycling" => "welcome#cyclewyn"
get "/welcome/downtown/yoga" => "welcome#yogadt"
get "/welcome/downtown/barre" => "welcome#barredt"
get "/welcome/downtown/boxing" => "welcome#boxingdt"
get "/welcome/downtown/pilates" => "welcome#pilatesdt"
get "/welcome/downtown/cycling" => "welcome#cycledt"
get "/welcome/brickell/yoga" => "welcome#yogabrick"
get "/welcome/brickell/barre" => "welcome#barrebrick"
get "/welcome/brickell/boxing" => "welcome#boxingbrick"
get "/welcome/brickell/pilates" => "welcome#pilatesbrick"
get "/welcome/brickell/cycling" => "welcome#cyclebrick"



scope "/api" do
resources :studios
end
end

