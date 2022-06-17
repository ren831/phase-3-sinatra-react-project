class KidsController < ApplicationController

  get "/kids" do 
  kid = kid.all
  kid.to_json
  end     

end