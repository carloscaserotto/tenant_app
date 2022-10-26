Rails.application.routes.draw do
  root 'welcome#home'
  constraints subdomain: /.*/ do
    resources :articles
  end
  #namespace : /.*/ do
  #  resources :articles
  #end
  
  resources :authors

  #We created the author with the name John Doe and set the slug value to johndoe. 
  #Our goal is to visit http://johndoe.localhost:3000/ address and see the data related only to the given tenant,
  #John Doe, in this case.

end
