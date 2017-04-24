require 'date'
class Api::V1::CalendarController < Api::V1::ApiController
  before_action :load_and_verify_authenticity_token
  before_action :current_customer

  def index
    @events = @current_customer.events.sort_by{|e| e[:date]}
    @next_event = @current_customer.events.where("date > ?", Date.yesterday).first
    @days = @next_event.date.mjd - Date.today.mjd
  end

end
