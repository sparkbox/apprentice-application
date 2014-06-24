Rails.application.routes.draw do

  root 'welcome#new' #root
  post 'step_one' => 'start#create'
  get 'step_one/:id' => 'start#show', as: 'edit_first_step'
  # post 'welcome' => 'welcome#create' #this should be first page

  # resources :demographics, :only => [:create, :show, :edit, :update], as: 'step_two'

  get 'step_two/:id' => 'demographics#show', as: 'edit_second_step'
  post 'step_two' => 'demographics#update'

  get 'step_three/:id' => 'personality#show', as: 'edit_third_step'
  post 'step_three' => 'personality#update'

  get 'step_four/:id' => 'reason#show', as: 'edit_fourth_step'
  post 'step_four' => 'reason#update'

  get 'confirm_step/:id' => 'confirm#show', as: 'check_confirm_step'
  post 'confirm_step' => 'confirm#update'

  get 'complete_step/:id' => 'finish#show', as: 'complete_application'
  post 'complete_step' => 'finish#update'

end
