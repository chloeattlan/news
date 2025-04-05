Rails.application.routes.draw do

  get("/", {:controller => "note", :action => "homepage"})
  get("/insert_page", { :controller => "note", :action => "insert_page"})
  post("/insert_note", { :controller => "note", :action => "insert_note"})
  get("/show/:note_id", {:controller => "note", :action => "show_note"})
  post("/modify_note/:note_id", { :controller => "note", :action => "modify_note"})
  get("/delete_note/:note_id", {:controller => "note", :action => "delete_note"})
  
end
