class WelcomeController < ApplicationController
  before_action :authenticate_user!
  def index
     @payment = Payment.order("fecha_payment DESC")
     @timenow = Date.today - 1.month
  end
end
