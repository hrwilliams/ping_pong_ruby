class Fixnum
  define_method(:ping_pong) do
    result = []
    (1..self).each() do |number|
      if number == 0
        result.push(number)
      elsif number.%(15) == 0
        result.push("pingpong")
      elsif number.%(5) == 0
        result.push("pong")
      elsif number.%(3) == 0
        result.push("ping")
      else
        result.push(number)
      end
    end
    result
  end
end
