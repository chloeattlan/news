class NoteController < ApplicationController
  #display the homepage
  def homepage
    @notes = Note.order(created_at: :desc)

    render({ :template => "homepage"})
  end

  def insert_page
    render({ :template => "insert"})
  end

  #add a new news event 
  def insert_note
    note = Note.new
    note.event = params['event']
    event = params[:event_choice] == "Other" ? params[:custom_event] : params[:event_choice]
    note.event = event
    note.article = params['article']
    note.source = params['source']
    note.summary = params['summary']
    note.impact = params['impact']
    note.today = params['today']
    note.timeframe = params['timeframe']
    note.stocks_text = params['stocks_text']
    note.save

    redirect_to("/")
  end


  def show_note
    @note = Note.find(params[:note_id])

    render({ :template => "show"})
  end

  def modify_note
    note = Note.find(params[:note_id])
    note.event = params['event']
    event = params[:event_choice] == "Other" ? params[:custom_event] : params[:event_choice]
    note.event = event
    note.article = params['article']
    note.source = params['source']
    note.summary = params['summary']
    note.impact = params['impact']
    note.today = params['today']
    note.timeframe = params['timeframe']
    note.stocks_text = params['stocks_text']
    note.save

    redirect_to("/")
  end

  def delete_note
    note = Note.find(params[:note_id])
    note.destroy
    redirect_to("/")
  end

end

# CODE FOR ADDING OPEN AI STUFF

    # require "http"
    # require "json"
    # require "dotenv/load"

    # request_headers_hash = {
    #   "Authorization" => "Bearer #{ENV.fetch("OPENAI_API_KEY")}",
    #   "content-type" => "application/json"
    # }
    # request_body_hash = {
    #   "model" => "gpt-3.5-turbo",
    #   "messages" => [
    #     {
    #       "role" => "system",
    #       "content" => "You only respond giving numbered headlines. Do not add an introduction or a conclusion, just the information. Before each headline and number, give this exact set of symbols: '$%'. with each news headline, include the date from which you pulled this information. pull information from this month, march 2025"
    #     },
    #     {
    #       "role" => "user",
    #       "content" => "Give me the 10 top headlines from recent news. only relevant to the economy, politics, or business. "
    #     }
    #   ]
    # }
    # request_body_json = JSON.generate(request_body_hash)
    # raw_response = HTTP.headers(request_headers_hash).post(
    #   "https://api.openai.com/v1/chat/completions",
    #   :body => request_body_json
    # ).to_s
    # parsed_response = JSON.parse(raw_response)
    # news = parsed_response['choices'][0]['message']['content']
    # @items = news.split("$%").reject(&:empty?)
