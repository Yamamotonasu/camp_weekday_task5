Rails.application.routes.draw do
  get '/fortunetelling/:birthday' => 'fortunetellings#show' 
end
