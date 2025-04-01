Rails.application.routes.draw do

  get("/", {:controller => "notes", :action => "homepage"})
  post("/insert_note", { :controller => "notes", :action => "insert_note"})
  
end
