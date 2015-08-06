require('rspec')
require('coin_combo')

describe('Fixnum#coin_combo') do
  it('takes 150 cents and returns 6 quarters') do
    expect((150).coin_combo()).to(eq('6 Quarters'))
  end
end
