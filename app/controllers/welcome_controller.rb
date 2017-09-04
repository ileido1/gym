class WelcomeController < ApplicationController
  before_action :authenticate_user!
  def index
     @payment = Payment.select("DISTINCT ON (client_id) * ").order("client_id, fecha_payment DESC")
     @timenow = Date.today - 1.month
  end
end
