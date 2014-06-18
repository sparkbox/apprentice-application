Rails.application.routes.draw do

  root 'welcome#new' #root
  post 'welcome' => 'welcome#create', as: 'edit_welcome_step'

  # resources :demographics, :only => [:create, :show, :edit, :update], as: 'step_two'

  get 'step_two/:id' => 'demographics#show', as: 'edit_second_step'
  post 'step_two' => 'demographics#update'

  get 'step_three/:id' => 'personality#show', as: 'edit_third_step'
  post 'step_three' => 'personality#update'
  get 'confirm_step' => 'reason#show', as: 'edit_confirm_step'
  post 'confirm_step' => 'reason#create'

  # get 'step_two/:id' => 'demographics#index'


end
