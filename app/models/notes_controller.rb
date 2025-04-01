require Date
# == Schema Information
#
# Table name: notes
#
#  id          :bigint           not null, primary key
#  article     :string
#  event       :text
#  impact      :text
#  source      :string
#  stocks_text :string
#  summary     :text
#  timeframe   :text
#  today       :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class NotesController < ApplicationController
  #display the homepage
  def homepage
    render({ :template => "homepage"})
  end

  #add a new news event 
  def insert_note
    note = Note.new
    note.event = params['event']
    note.article = params['article']
    note.source = params['source']
    note.summary = params['summary']
    note.impact = params['impact']
    note.date = Date.today
    note.timeframe = params['timeframe']
    note.stocks = params['stocks']
    note.save

    redirect_to("/")
end
