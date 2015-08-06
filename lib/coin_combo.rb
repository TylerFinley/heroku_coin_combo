class Float
  define_method(:coin_combo) do
    coin_name = {0.25 => 'quarter',
              0.10 => 'dime',
              0.05 => 'nickel',
              0.01 => 'penny'}

    counter = 0.00
      until counter.==(0.01)
        coin_name.fetch(0.01)
        counter = counter.+(0.01)
    end

    if counter==0.01
      'penny'
    end
  end
end
