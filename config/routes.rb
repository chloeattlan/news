Rails.application.routes.draw do

  get("/", {:controller => "notes", :action => "homepage"})
  get("/insert_page", { :controller => "notes", :action => "insert_page"})
  post("/insert_note", { :controller => "notes", :action => "insert_note"})
  
end
