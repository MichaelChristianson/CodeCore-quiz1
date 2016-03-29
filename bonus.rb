# def titleize(string)
#  string.gsub(){ $&.capitalize }
# end




class statements
  def titleize(string)
    'hello'
  end
end

module HelperMethods
  def bar
    super + ' world'
  end
end

class statements
  prepend HelperMethods
end

statements.new.bar # => 'Hello World'
