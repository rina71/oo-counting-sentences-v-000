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
    if (self.sentence? || self.question? || self.exclamation?)
      binding.pry
      self.split(/\.|\!|\?/).count

    elsif self.split(/\.|\!|\?/).include?("")
      a = self.split(/\.|\!|\?/)

      a.delete("")
      return a.count
    else
      0
    end
  end
end
