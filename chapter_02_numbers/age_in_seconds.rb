# assuming I was born on October 1
age_in_years = 28.0 + (2.0 / 12.0)

seconds_in_a_minute = 60
minutes_in_an_hour = 60
hours_in_a_day = 24
days_in_a_year = 365

# multiplying seconds, minutes, hours and days to find out age in seconds
age_in_seconds = seconds_in_a_minute * minutes_in_an_hour * hours_in_a_day * days_in_a_year * age_in_years

# print the result of your age in seconds
puts sprintf("%.0f", age_in_seconds)
