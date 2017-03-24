require('pry')

class String

    define_method(:allcount) do |arg1, arg2|
        if arg2 == "count"
            self.count(arg1)
        elsif arg2 == "count_fw"
            self.count_fw(arg1)
        elsif arg2 == "count_noncase"
            self.count_noncase(arg1)
        elsif arg2 == "count_noncase_fw"
            self.count_noncase_fw(arg1)
        end  #if
    end #method


    define_method(:count) do |argument|
        word_count=0
        check_word=argument
        check_word_length=check_word.length()
        input_string=self.clone
        input_string_length = input_string.length()
        if check_word_length > input_string_length
            return 0
        end  #if
        until input_string=="" do
            if check_word == input_string.slice(0, check_word_length)
                word_count+=1
                input_string.slice!(0)
            else
                input_string.slice!(0)
            end  #if
        end  #until
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
        check_word_length=check_word.length()
        input_string=self.clone.upcase
        input_string_length = input_string.length()
        if check_word_length > input_string_length
            return 0
        end  #if

        until input_string=="" do
            if check_word == input_string.slice(0, check_word_length)
                word_count+=1
                input_string.slice!(0)
            else
                input_string.slice!(0)
            end  #if
        end  #until
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
