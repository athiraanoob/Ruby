class String
    #splitting input sentences
    def sentences
        gsub(/\n|\r/,' ').split(/\.\s*/)
    end
#splitting words into array of a sentence
    def words
        scan(/\w[\w|\'|\-]*/)
    end
end
#Wordplay class
class WordPlay
    #used for pronoun substitution in the sentence
    def self.switch_pronouns(text)
        text.gsub(/\b(I am|You are|I|You|Me|Your|My)\b/i) do |pronoun|
            case pronoun.downcase
            when "i"
                "you"
            when "you"
                "me"
            when "me"
                "you"
            when "i am"
                "you are"
            when "you are"
                "i am"
            when "your"
                "my"
            when "my"
                "your"
            end
        end.sub(/^me\b/i,"i")
    end
    #getting best sentence by searching in desired words
    def self.best_sentence(sentences,desired_words) 
        ranked_sentences=sentences.sort_by do |s|
            s.words.length-(s.downcase.words-desired_words).length
        end
ranked_sentences.last
    end 
    
end

    