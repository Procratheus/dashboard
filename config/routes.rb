Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  authenticated :user do
    root 'devise/registrations#edit',  as: :authenticated_root
  end

  root to: "welcome#index"
end
