Rails.application.routes.draw do
  get "/posts/new", to: "posts#new", as: "new_post"
  post "/posts", to: "posts#create", as: :posts
  get "/posts", to: "posts#index", as: :posts_index
  root 'posts#index'
end

