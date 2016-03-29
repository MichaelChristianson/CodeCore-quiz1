module HelperMethods

   puts "Enter a sentence"
   gets.to_i
   def titleize(string)
     statement = (puts)
    string.split(" ").map do |word|
       if statement.include?(word)
         word
      else
         word.capitalize
       end
     end.join(" ")
  end

 end
