class WelcomeController < ApplicationController
  before_action :authenticate_user!
  def index
     @payment = Payment.select("DISTINCT ON (client_id) * ")
     @timenow = Date.today - 1.month
  end
end
