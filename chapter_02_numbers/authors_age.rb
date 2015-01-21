age_in_seconds = 1025000000.0

seconds_in_a_minute = 60
minutes_in_a_hour = 60
hours_in_a_day = 24
days_in_a_year = 365

# multiplying seconds, minutes, hours and days to find out seconds in a year
seconds_in_a_year = seconds_in_a_minute * minutes_in_a_hour * hours_in_a_day * days_in_a_year

# print the result of your age in years
puts sprintf("%.1f", age_in_years = age_in_seconds / seconds_in_a_year)
