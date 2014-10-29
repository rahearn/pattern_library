PatternLibrary::Engine.routes.draw do
  resources :patterns

  root to: 'patterns#index'
end
