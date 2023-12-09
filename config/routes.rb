Rails.application.routes.draw do
  # Routes for the Like resource:

  # CREATE
  post("/insert_like", { :controller => "likes", :action => "create" })
          
  # READ
  get("/likes", { :controller => "likes", :action => "index" })
  
  get("/likes/:path_id", { :controller => "likes", :action => "show" })
  
  # UPDATE
  
  post("/modify_like/:path_id", { :controller => "likes", :action => "update" })
  
  # DELETE
  get("/delete_like/:path_id", { :controller => "likes", :action => "destroy" })

  #------------------------------

  # Routes for the Comment resource:

  # CREATE
  post("/insert_comment", { :controller => "comments", :action => "create" })
          
  # READ
  get("/comments", { :controller => "comments", :action => "index" })
  
  get("/comments/:path_id", { :controller => "comments", :action => "show" })
  
  # UPDATE
  
  post("/modify_comment/:path_id", { :controller => "comments", :action => "update" })
  
  # DELETE
  get("/delete_comment/:path_id", { :controller => "comments", :action => "destroy" })

  #------------------------------

  # Routes for the Department resource:

  # CREATE
  post("/insert_department", { :controller => "departments", :action => "create" })
          
  # READ
  get("/departments", { :controller => "departments", :action => "index" })
  
  get("/departments/:path_id", { :controller => "departments", :action => "show" })
  
  # UPDATE
  
  post("/modify_department/:path_id", { :controller => "departments", :action => "update" })
  
  # DELETE
  get("/delete_department/:path_id", { :controller => "departments", :action => "destroy" })

  #------------------------------

  # Routes for the Bid resource:

  # CREATE
  post("/insert_bid", { :controller => "bids", :action => "create" })
          
  # READ
  get("/bids", { :controller => "bids", :action => "index" })
  
  get("/bids/:path_id", { :controller => "bids", :action => "show" })
  
  # UPDATE
  
  post("/modify_bid/:path_id", { :controller => "bids", :action => "update" })
  
  # DELETE
  get("/delete_bid/:path_id", { :controller => "bids", :action => "destroy" })

  #------------------------------

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

   # Defines the root path route ("/")
   root "department#index"

end
