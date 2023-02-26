module Customers
  class Status < EnumerateIt::Base
    associate_values(
      :active,
      :blocked
    )
  end
end