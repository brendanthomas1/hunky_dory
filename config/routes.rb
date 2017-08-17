HunkyDory::Engine.routes.draw do
  root to: 'changes#index'

  resources :changes
end
