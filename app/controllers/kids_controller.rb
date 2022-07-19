class KidsController < ApplicationController

  get "/kids" do
  kid = Kid.all
  kid.to_json(include: [:events])
  end

  get "/kids/:id" do 
    kid = Kid.find(params[:id])
    kid.to_json
  end

  post "/kids" do
    kid = Kid.create(
      name: params[:name]
    )
    kid.to_json
  end

  patch "/kids/:id" do
    kid = Kid.find(params[:id])
    kid.update(
      name: params[:name]
    )
    kid.to_json
  end

  delete "/kids/:id" do
    kid = Kid.find(params[:id])

    kid.destroy
    kid.to_json
  end

end