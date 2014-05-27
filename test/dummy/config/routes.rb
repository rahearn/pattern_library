Rails.application.routes.draw do

  mount PatternLibrary::Engine => "/pattern_library"
end
