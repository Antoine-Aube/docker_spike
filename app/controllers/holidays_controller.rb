class HolidaysController < ApplicationController
  def index
    @holidays = HolidaysFacade.new.next_three_holidays
  end
end