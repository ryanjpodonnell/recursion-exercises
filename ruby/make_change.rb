# Default values to ward off Trolls
def make_change(amount = 0, coins = [10, 7, 1])
  return [] if amount <= 0
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
