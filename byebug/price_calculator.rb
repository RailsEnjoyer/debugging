require 'pry'

class PriceCalculator
  def initialize(base_price, tax_rate)
    raise ArgumentError, "Tax rate must be a number" unless tax_rate.is_a?(Numeric)

    @base_price = base_price
    @tax_rate = tax_rate
  end

  def final_price
    tax = calculate_tax
    total = @base_price + tax
    total.round(2)
  end

  private

  def calculate_tax
      (@base_price * @tax_rate).round(3)
  end
end

calculator = PriceCalculator.new(100, nil)
puts "Final price: #{calculator.final_price}"
