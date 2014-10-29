PatternLibrary::Engine.routes.draw do
  resources :patterns, except: :show

  root to: 'patterns#index'
end
