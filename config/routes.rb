Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'surveys#question1'

  get 'question1', to: 'surveys#question1', as: 'question1'
  post 'question1', to: 'surveys#save_question1'

  get 'question2', to: 'surveys#question2', as: 'question2'
  post 'question2', to: 'surveys#save_question2'

  get 'question3', to: 'surveys#question3', as: "question3"
  post 'question3', to: 'surveys#save_question3'

  get 'question4', to: 'surveys#question4', as: "question4"
  post 'question4', to: 'surveys#save_question4'

  get 'question5', to: 'surveys#question5', as: "question5"
  post 'question5', to: 'surveys#save_question5'

  get 'confirmation', to: 'surveys#confirmation', as: 'confirmation'
  post 'submit', to: 'surveys#submit', as: 'submit'

  get 'completion', to: 'surveys#completion', as: 'completion'
end
