require 'pry'

class String

  def sentence?
    self.end_with?(".") 
  end

  def question?
    self.end_with?("?") 

  end

  def exclamation?
    self.end_with?("!") 

  end

  def count_sentences
  sentences = self.split(/[.!?]/)
  sentences.reject! { |sentence| sentence.strip.empty? }
  sentences.length
    # binding.pry
  end
end
 