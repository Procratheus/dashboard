Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  devise_scope :user do
    authenticated :user do
      root 'devise/registrations#edit',  as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new',  as: :unauthenticated_root
    end
  end
end
