require('pry')

class String

    define_method(:allcount) do |arg1, arg2|
        if arg2 == "Case Sensitive Any - including partial words"
            self.count(arg1)
        elsif arg2 == "Case Sensitive Word Only"
            self.count_fw(arg1)
        elsif arg2 == "Case Non-sensitive Any - including partial words"
            self.count_noncase(arg1)
        elsif arg2 == "Case Non-sensitive Word"
            self.count_noncase_fw(arg1)
        end  #if
    end #method


    define_method(:count) do |argument|
        word_count=0
        input_string=self.clone
        word_count=input_string.scan(argument).length
        return word_count
    end #method

    define_method(:count_fw) do |argument|
        word_count=0
        new_array = self.split(" ")
        new_array.each do |word|
            if word == argument
                word_count+=1
            end  #if
        end #each
        return word_count
    end #method

    define_method(:count_noncase) do |argument|
        word_count=0
        check_word=argument.upcase
        input_string=self.clone.upcase
        word_count=input_string.scan(check_word).length
        return word_count
    end #method

    define_method(:count_noncase_fw) do |argument|
        word_count=0
        new_array = self.split(" ")
        new_array.each do |word|
            if word.upcase == argument.upcase
                word_count+=1
            end  #if
        end #each
        return word_count
    end #method

end
