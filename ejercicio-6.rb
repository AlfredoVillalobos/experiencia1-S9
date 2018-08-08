class Product
#   def initialize(name, large, medium, small, xsmall)
 def initialize(name, *price_sizes)
    @name = name
    #@size_prices = prices_sizes.map(&:to_i)
    @large = price_sizes[0].to_i
    @medium = price_sizes[1].to_i
    @small = price_sizes[2].to_i
    @xsmall = price_sizes[3].to_i
    #print "#{@name} - #{@size_prices} "
  end
  def average
    #@price_sizes.sum / @price_sizes.length
    (@large + @medium + @small + @xsmall) / 4.0
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end

puts "#{products_list} \n"
print "#{products_list[0].average}"