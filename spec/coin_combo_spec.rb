require('rspec')
require('coin_combo')

describe('Fixnum#coin_combo') do
  it('returns quantity of quarters when input is a multiple 25') do
    expect((150).coin_combo()).to(eq('6 Quarters, 0 Dimes, 0 Nickels, and 0 Pennies'))
  end

  it('returns quantity of quarters and dimes when input is a multiple of 25 and 10') do
    expect((160).coin_combo()). to(eq('6 Quarters, 1 Dimes, 0 Nickels, and 0 Pennies'))
  end

  it('returns quantity of quarters, dimes, and nickels when input is a multiple of 25, 10, and 5') do
    expect((165).coin_combo()). to(eq('6 Quarters, 1 Dimes, 1 Nickels, and 0 Pennies'))
  end

  it('returns quantity of quarters, dimes, nickels, and pennies when input is a multiple of 25, 10, 5, and 1') do
    expect((166).coin_combo()). to(eq('6 Quarters, 1 Dimes, 1 Nickels, and 1 Pennies'))
  end
end
