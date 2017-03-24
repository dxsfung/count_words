require('rspec')
require('count_word')

describe("String#count")do
    # it("returns result how frequently a word appears")do
    #     expect("If Peter Piper picked a PECK! of pickled peppers, where’s the peck of pickled peppers Peter Piper picked?".count("peck")).to(eq(1))
    # end
    # it("returns result how frequently a word appears")do
    #     expect("If Peter Piper hello hello! hello, picked a PECK! of pickled peppers, where’s the peck of pickled peppers Peter Piper picked?".count("hello,")).to(eq(1))
    # end
    # it("returns result how frequently a word appears")do
    #     expect("I’m taking my cat on a walk through the catacombs".count("cat")).to(eq(2))
    # end
    it("returns result how frequently a word appears")do
        expect("wor".count("word")).to(eq(0))
    end
    it("returns result how frequently a word appears")do
        expect("word".count("word")).to(eq(1))
    end
    it("returns result how frequently a word appears")do
        expect("wordwordword".count("word")).to(eq(3))
    end
    it("returns result how frequently a word appears")do
        expect("word word wordword wordwordword".count("word")).to(eq(7))
    end
    it("returns result how frequently a word appears")do
        expect("cat_cat_cat cat_cat catthedral".count("cat")).to(eq(6))
    end
    it("returns result how frequently a word appears")do
        expect("nothing".count("cat")).to(eq(0))
    end

    it("returns result how frequently a word appears")do
        expect("wor".count_fw("word")).to(eq(0))
    end
    it("returns result how frequently a word appears")do
        expect("word".count_fw("word")).to(eq(1))
    end
    it("returns result how frequently a word appears")do
        expect("wordwordword".count_fw("word")).to(eq(0))
    end
    it("returns result how frequently a word appears")do
        expect("word word wordword wordwordword".count_fw("word")).to(eq(2))
    end
    it("returns result how frequently a word appears")do
        expect("cat_cat_cat cat_cat catthedral".count_fw("cat")).to(eq(0))
    end
    it("returns result how frequently a word appears")do
        expect("nothing".count_fw("cat")).to(eq(0))
    end

    it("returns result how frequently a word appears")do
        expect("wor".count_noncase("WORD")).to(eq(0))
    end
    it("returns result how frequently a word appears")do
        expect("word".count_noncase("WORD")).to(eq(1))
    end
    it("returns result how frequently a word appears")do
        expect("wordwordword".count_noncase("WORD")).to(eq(3))
    end
    it("returns result how frequently a word appears")do
        expect("word word wordword wordwordword".count_noncase("WOrd")).to(eq(7))
    end
    it("returns result how frequently a word appears")do
        expect("cat_CAT_cat cat_cat catthedral".count_noncase("Cat")).to(eq(6))
    end
    it("returns result how frequently a word appears")do
        expect("nothing".count_noncase("Cat")).to(eq(0))
    end

    it("returns result how frequently a word appears")do
        expect("wor".count_noncase_fw("wORd")).to(eq(0))
    end
    it("returns result how frequently a word appears")do
        expect("word".count_noncase_fw("wORd")).to(eq(1))
    end
    it("returns result how frequently a word appears")do
        expect("wordWORDword".count_noncase_fw("worD")).to(eq(0))
    end
    it("returns result how frequently a word appears")do
        expect("word word wordWord wordwordword".count_noncase_fw("WOrd")).to(eq(2))
    end
    it("returns result how frequently a word appears")do
        expect("cat_cat_cat CAT_cat CAT cat catthedral".count_noncase_fw("Cat")).to(eq(2))
    end
    it("returns result how frequently a word appears")do
        expect("nothing".count_noncase_fw("cAT")).to(eq(0))
    end


end

# describe("String#count_noncase")do
#     it("returns result how frequently a word appears")do
#         expect("If Peter Piper picked a PECK! of pickled peppers, where’s the peck of pickled peppers Peter Piper picked?".count_noncase("peck")).to(eq(2))
#     end
#     it("returns result how frequently a word appears")do
#         expect("If Peter Piper picked a PECK! of pickled peppers, where’s the peck of pickled peppers Peter Piper picked?".count_noncase("PecK")).to(eq(2))
#     end
# end
#
# describe("String#count_fw")do
#     it("returns result how frequently a word appears")do
#         expect("If Peter Piper picked a PECK! of pickled peppers, where’s the peck of pickled peppers Peter Piper picked?".count_fw("peck")).to(eq(2))
#     end
#     it("returns result how frequently a word appears")do
#         expect("If Peter Piper picked a PECK-no! of pickled peppers, where’s the peck of pickled peppers Peter Piper picked?".count_fw("PecK")).to(eq(1))
#     end
# end
