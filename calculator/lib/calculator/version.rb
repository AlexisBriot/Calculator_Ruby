module Calculator
  VERSION = "0.2.0"
end

class Go


	def initialize()

		sec = nil

		puts "Operateurs disponibles : + - * / % cos sin tan exp".red.on_white.blink
		print "Quel est le premier nombre ?".red
		prem = gets.chomp

		print "Quel est l'operateur ?".blue
		ope = gets.chomp

		test = tester(ope)

		if(test == true)

			print "Quel est le deuxieme nombre ?".yellow
			sec = gets.chomp

		end

		comparateur(ope,prem,sec)
		print "\n"

	end

	def tester(ope)
		case ope
		when "cos", "tan", "sin", "exp"
			return false
		else
			return true
		end

	end

	def comparateur(ope,prem,sec)

		case ope
		when "+"
			print (prem.to_i + sec.to_i)
		when "-"
			print (prem.to_i - sec.to_i)
		when "*"
			print (prem.to_i * sec.to_i)
		when "/"
			if sec.to_i != 0
				print (prem.to_i / sec.to_i)
			else
				print "Division par 0 impossible"
			end
		when "cos"
			print Math.cos(prem.to_i)
		when "sin"
			print Math.sin(prem.to_i)
		when "tan"
			print Math.tan(prem.to_i)
		when "exp"
			print Math.exp(prem.to_i)
		when "%"
			if sec.to_i != 0
				print (prem.to_i % sec.to_i)
			else
				print "Modulo par 0 impossible"
			end

		else
			print "Mauvais opérateur"
		end

	end


end
