class EventsController < ApplicationController

get "/events" do
event = Event.all
event.to_json
end

get "/events/:id" do
event = Event.find(params[:id])
event.to_json
end

post "/events" do 
  event =Event.create(
    name: params[:name],
    days: params[:days],
    start_time: params[:start_time],
    event_length: params[:event_length],
    kid_id: params[:kid_id]
  )
event.to_json
end

patch "/events/:id" do 
  event = Event.find(params[:id])
  event.update(
    name: params[:name],
    days: params[:days],
    start_time: params[:start_time],
    event_length: params[:event_length],
    kid_id: params[:kid_id]
  )
  event.to_json
end

delete "/events/:id" do
  event = Event.find(params[:id])
  event.destroy
  event.to_json
end
  
end