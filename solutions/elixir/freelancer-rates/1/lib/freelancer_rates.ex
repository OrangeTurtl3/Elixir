defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    before_discount - (before_discount * (discount/100))
  end

  def monthly_rate(hourly_rate, discount) do
    i = FreelancerRates.apply_discount(FreelancerRates.daily_rate(hourly_rate) * 22, discount)
    trunc(Float.ceil(i, 0))
  end

  def days_in_budget(budget, hourly_rate, discount) do
    per_hour = FreelancerRates.apply_discount(hourly_rate, discount)
    per_day = FreelancerRates.daily_rate(per_hour)
    amount_of_days = budget / per_day
    Float.floor(amount_of_days, 1)
    end
end
