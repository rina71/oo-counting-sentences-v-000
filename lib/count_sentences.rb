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
    # split on punctuation
    # delete empty strings
    # take the count
    # if the original string didn't end in punctunation
    #    subtract 1 from count
    # return max(0, count)

    a = self.split(/\.|\!|\?/)
    a.delete("")
    # binding.pry
    a.count


  end
end
