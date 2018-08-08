propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

class Dog
  def initialize(nombre = 'Beethoven', raza = 'San Bernardo', color = 'cafe')
    @nombre = nombre
    @raza = raza
    @color = color
  end

  def ladrar
    "#{@nombre} esta ladrando"
  end
end

perro = Dog.new
puts perro.ladrar