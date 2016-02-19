class Game
	
	attr_reader :cartas

	def initialize
		@cartas = []
		@index=0
		load_cards
	end

	private

	def load_cards
		arr_of_arrs = CSV.read("respuestas.csv")
		arr_of_arrs.each do |array|
			pregunta = array[0]
			respuestas = array[1]
			@cartas << Card.new(pregunta, respuesta)
		end
	end

end


class Card

	attr_reader :pregunta

	def initialize(pregunta, respuesta)
		@pregunta=pregunta
		@respuestas=respuesta
	end

	def respuesta_correcta?(string)
		string.downcase==@respuesta
	end

end