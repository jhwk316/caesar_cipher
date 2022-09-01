

def cipher(str, num)
  str.chars.map { |x| 
  
    if x.match(/[a-z]/i) #To keep case value
      (x.ord + num).chr
        if x.ord < 91 && (x.ord + num) > 90 #
          (x.ord - 26 + num).chr   
        elsif (x.ord + num) > 122
          (x.ord - 26 + num).chr       
        else
          (x.ord + num).chr
       end
    else
      x
    end
  }.join
end


p cipher("What a String!", 5)


