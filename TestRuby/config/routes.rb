Rails.application.routes.draw do
  get 'registro_beacons/RegistroBeacons'
  
  get 'registro_beacons/show'
  get 'registro_beacons/datos'
  get 'registro_beacons/Chart'
  get 'registro_beacons/index'
 
  get 'articles/index'
  get 'articles/datos'
  get 'articles/new'
  get 'articles/show'
  get 'articles/edit'
  post "articles" => "articles#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
