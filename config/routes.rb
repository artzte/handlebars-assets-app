HandlebarsAssetsApp::Application.routes.draw do
  
  get "app/index"

  root :to => 'app#index'

end
