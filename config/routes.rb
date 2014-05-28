PatternLibrary::Engine.routes.draw do
  resources :patterns, only: [:index]

  root to: 'patterns#index'
end
