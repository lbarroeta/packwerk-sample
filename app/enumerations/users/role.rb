module Users
  class Role < EnumerateIt::Base
    associate_values(
      :admin,
      :tour_guide
    )
  end
end