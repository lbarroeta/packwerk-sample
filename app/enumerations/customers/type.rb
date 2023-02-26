module Customers
  class Type < EnumerateIt::Base
    associate_values(
      :tour_guide,
      :bus_company
    )
  end
end