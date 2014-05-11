IdeaHub::Application.routes.draw do

  resources :ideas do
    resources :links#, shallow: true
  end

  root 'ideas#index'

end
