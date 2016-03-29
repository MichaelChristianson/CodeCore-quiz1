module CodeCoreModule
   def boot_camp
     puts "Bootcamp Module: Welcome!"
   end
 end

 class IncludesModule
   include CodeCoreModule
 end

 class ExtendsModule
   extend CodeCoreModule
 end

 puts "Include"
 IncludesModule.boot_camp
 puts "Extend"
 ExtendsModule.boot_camp

 module CountMethod
   def curlybracket_count
     @content.scan(/{/).length
   end
 end


 class RubyDocument
   include CountMethod
   attr_reader :content

   def initialize(text)
     @content = text
   end
 end

 class JavascriptDocument
   include CountMethod
   attr_reader :content

   def initialize(text)
     @content = text
   end
 end

 puts Ruby = RubyDocument.new("You really dont see too many '{' in ruby!")
 puts Javascript = JavascriptDocument.new("You'll see a ton of '{' in Javascript! You'll need '{'to make your code run! ")

 Ruby.curlybracket_count #1
Javascript.curlybracket_count #2
