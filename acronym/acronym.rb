=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

class Acronym
  class << self
    def abbreviate(phrase)
      @phrase = phrase

      response = ""

      split_phrase.each { |word| response += upcase_first_letter(word) }

      response
    end

    private

    def split_phrase
      remove_special_characters.split(" ")
    end

    def remove_special_characters
      @phrase.gsub(/-(\s+)?/, ' ')
    end

    def upcase_first_letter(word)
      word[0].upcase
    end
  end
end