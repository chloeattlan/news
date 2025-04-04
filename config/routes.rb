Rails.application.routes.draw do

  get("/", {:controller => "notes", :action => "homepage"})
  get("/insert_page", { :controller => "notes", :action => "insert_page"})
  post("/insert_note", { :controller => "notes", :action => "insert_note"})
  post("/modify_note/:note_id", {:controller => "note", :action => "modify_note"})
  
end
