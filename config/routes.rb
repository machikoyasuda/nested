Nested::Application.routes.draw do
  resources :lines do
    resources :stations
  end
end
