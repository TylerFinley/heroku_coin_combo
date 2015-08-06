class Fixnum
  define_method(:coin_combo) do
    amount = self
    quarters = 0
    dimes = 0
    nickels = 0
    pennies = 0

    until amount < 25
      amount = amount - 25
      quarters = quarters + 1
    end

    until amount < 10
      amount = amount - 10
      dimes = dimes + 1
    end

    until amount < 5
      amount = amount -5
      nickels = nickels + 1
    end

    until amount < 1
      amount = amount - 1
      pennies = pennies + 1
    end

    total = quarters.to_s + ' Quarters, ' + dimes.to_s + ' Dimes, ' + nickels.to_s + ' Nickels, and ' + pennies.to_s + ' Pennies'
  end
end
