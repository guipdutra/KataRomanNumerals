class RomanNumeral

   ROMAN = {
            'I' => 1,
            'V' => 5,
            'X' => 10,
            'L' => 50,
            'C' => 100,
            'D' => 500,
            'M' => 1000
          }


  def initialize(number)
    @number = number
  end

  def is_last_roman_number
    !numbert_str[i+1].nil?
  end

  def to_literal
    i = 0
    number = 0
    numbert_str = @number

    while numbert_str.size >= i
      if !numbert_str[i+1].nil?
        if ROMAN[numbert_str[i]] >= ROMAN[numbert_str[i+1]]
          number += ROMAN[numbert_str[i]]
        else
          number -= ROMAN[numbert_str[i]]    
        end  
      else
        number += ROMAN[numbert_str[i]]
        return number
      end
      i += 1
    end
  end
  
end