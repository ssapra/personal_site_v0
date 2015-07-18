class PagesController < ApplicationController
  caches_action :home

  def home
  end

  def send_message
    if [params[:name], params[:email], params[:message][0]].include?("") && !(valid_email?(params[:email]))
      render 'alert'
    else
      MessageMailer.send_message(params).deliver
      render 'notice'
    end
  end

  private

  def valid_email?(email)
    begin
     return false if email == ''
     parsed = Mail::Address.new(email)
     return parsed.address == value && parsed.local != parsed.address
    rescue Mail::Field::ParseError
      return false
    end
  end
end
