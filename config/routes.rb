Website::Application.routes.draw do
  root to: "pages#home"
  get '/projects' => 'pages#projects', as: :projects
  get '/experience' => 'pages#experience', as: :experience
  get '/skills' => 'pages#skills', as: :skills
  get '/contact' => 'pages#contact', as: :contact
  get '/download' => 'pages#download_pdf'
  get '/enova' => 'pages#enova'
  get '/opower' => 'pages#opower'
  get '/uevents' => 'pages#uevents'
  get '/reliefwatch' => 'pages#reliefwatch'
  get '/nolimitcodeem' => 'pages#nolimitcodeem'
  get '/happyhealth' => 'pages#happyhealth'
  post '/send' => 'pages#send_message'
end
