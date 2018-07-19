class TextAnalyzer
  def process
    txt = File.open("test.txt", 'r')
    yield txt.read
    txt.close
  end
end

analyzer = TextAnalyzer.new

analyzer.process { |txt|puts "#{txt.scan(/\n\n/).count+1} Paragraphs"}
analyzer.process { |txt|puts "#{txt.scan(/\n/).count} Lines"}
analyzer.process { |txt|puts "#{txt.scan(/\w+/).count} Words"}