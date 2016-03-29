# book = Book.new
# book.title = "Grokking Algorithms"
# book.add_chapter("Grokking Algorithms Chapter 1")
# book.add_chapter("Grokking Algorithms Chapter 2")
# book.chapters
# # This should print:
# # Your book: My Awesome Book has 2 chapters:
# # 1. My Awesome Chapter 1
# # 2. My Awesome Chapter 2

class Book
   attr_accessor :title, :chapters

   def initialize(title="", chapters={})
     @title = title
     @chapters = chapters
   end

   def add_chapter(str)
        chapter_number = @chapters.length + 1
        @chapters[chapter_number] = str
   end

   def chapters
     message = "Your book, #{@title}, has #{@chapters.length} chapters: "
       @chapters.each do |chapter_num, chapter_title|
         message += "#{chapter_num}. #{chapter_title}"
       end
    message
   end

 end
