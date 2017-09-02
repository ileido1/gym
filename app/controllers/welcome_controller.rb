class WelcomeController < ApplicationController
  before_action :authenticate_user!
  def index
     @payment = Payment.group_by(:client_id).order("fecha_payment DESC")
     @timenow = Date.today - 1.month
  end
end
