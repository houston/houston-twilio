Houston::Twilio::Engine.routes.draw do

  scope "twilio" do
    post "/messages", to: "messages#create"
  end

end
