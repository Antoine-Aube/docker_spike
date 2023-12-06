class HolidaysService
  def next_three_holidays
    Faraday.get("https://date.nager.at/api/v3/NextPublicHolidays/US")
  end
end