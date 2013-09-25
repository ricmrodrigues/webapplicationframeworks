class TextAnalyzer
  def initialize(filePath)
    @filePath = filePath
    @words = 0
    @characters = 0
    @charactersNoSpaces = 0
    @sentences = 0
    @paragraphs = 0
    @avgWordsPerSentence = 0
    @avgSentencesPerParagraph = 0
  end  
  
  def analyze()
    File.open(@filePath, "r").each_line do |line|
      analyzeLine(line)
    end
    @paragraphs /= 2
    getAvgWordsInSentence()
    getAvgSentencesInParagraph()       
    
    puts "words = " + @words.to_s
    puts "chars = " + @characters.to_s
    puts "chars no spaces = " + @charactersNoSpaces.to_s
    puts "sentences = " + @sentences.to_s
    puts "paragraphs = " + @paragraphs.to_s
    puts "avg words in sentences = " + @avgWordsPerSentence.to_s
    puts "avg sentences in paragraphs = " + @avgSentencesPerParagraph.to_s
  end
  
  private
  def analyzeLine(lineText)
    @words += getWordCount(lineText)
    @characters += getCharCount(lineText)
    @charactersNoSpaces += getCharCountNoSpaces(lineText)
    @sentences += getSentenceCount(lineText)
    @paragraphs += getParagraphCount(lineText)
  end
  
  def getWordCount(lineText)
    lineText.to_s.split(" ").length
  end
  
  def getCharCount(lineText)
    lineText.length
  end
  
  def getCharCountNoSpaces(lineText)
    myLine = lineText
    myLine.gsub(" ","").length
  end
      
  def getSentenceCount(lineText)
    lineText.scan(/(\.|\!|\?)(\s|$)/).count
  end
      
  def getParagraphCount(lineText)
    lineText.scan("\r\n").count
  end  
  
  def getAvgWordsInSentence()
    @avgWordsPerSentence = @words / @sentences
  end
  
  def getAvgSentencesInParagraph()
    @avgSentencesPerParagraph = @sentences / @paragraphs
  end  
end

puts "input file path"
filePath = "/home/nci/host/NCI/Web Application Frameworks/test.txt"
analyzer = TextAnalyzer.new(filePath)
analyzer.analyze()