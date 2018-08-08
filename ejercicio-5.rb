class Morseable
  def initialize(number)
    @number = number
  end

  def generate_hash(number)
    return nil if number < 0 || number > 9 
    # Esto es una aberración y debe ser refactorizado!
    # h = '-----' if number == 0
    # h = '.----' if number == 1
    # h = '..---' if number == 2
    # h = '...--' if number == 3
    # h = '....-' if number == 4
    # h = '.....' if number == 5
    # h = '-....' if number == 6
    # h = '--...' if number == 7
    # h = '---..' if number == 8
    # h = '----.' if number == 9
    h = {number: "#{'.'*number}#{'-'*(5-number)}"} if number <= 5
    h = {number: "#{'-'*(number-5)}#{'.'*(10-number)}"} unless number <= 5 
    h
  end

  def to_morse
    generate_hash(@number)
  end
end

m = Morseable.new(3)
print "M: #{m.to_morse}\n"

n = Morseable.new(-1)
print "N: #{n.to_morse}\n"