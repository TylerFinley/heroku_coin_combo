require('rspec')
require('coin_combo')

describe('Float#coin_combo') do
  it('takes one cent and returns one penny') do
    expect((0.01).coin_combo()).to(eq('penny'))
  end

end
