class HolidaysFacade
  def next_three_holidays
    response = HolidaysService.new.next_three_holidays
    parsed = JSON.parse(response.body, symbolize_names: true).first(3)
    next_three_holidays = parsed.map { |holiday| Holiday.new(holiday)}
  end
end