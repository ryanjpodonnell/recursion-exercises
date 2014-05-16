def make_change(amount, coins)
  return [amount] if coins.include?(amount)
  if amount < coins[-2]
    return [coins[-1]]*amount
  else
    coin_combos = []
    coins.select { |coin| amount > coin }.each do |coin|
      coin_combos << [coin] + make_change(amount - coin, coins)
    end

    best_combos = coin_combos.sort { |a, b| a.length <=> b.length }
    best_combos.first
  end
end


arr = [14, 35, 12]

arr.each do |num|
  p make_change(num, [10, 7, 1])
end
