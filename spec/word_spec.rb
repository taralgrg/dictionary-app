require('rspec')
  # require('definition')
  require('word')

  describe(Word) do
    before() do
      Word.clear()
    end

    describe('#word') do
      it("returns the word from the Dictionary") do
        test_word = Word.new("Tomato")
        expect(test_word.word()).to(eq("Tomato"))
      end
    end

    describe('#id') do
      it("returns the id of the word") do
        test_word = Word.new("Local")
        expect(test_word.id()).to(eq(1))
      end
    end

    describe('#words') do
      it("initially returns an empty array of words from the Dictionary") do
        test_word = Word.new("Papaya")
        expect(test_word.definitions()).to(eq([]))
      end
    end

    describe("#save") do
      it("adds a word to the array of saved words") do
        test_word = Word.new("Honey")
        test_word.save()
        expect(Word.all()).to(eq([test_word]))
      end
    end

    describe(".all") do
      it("is empty at first") do
        expect(Word.all()).to(eq([]))
      end
    end

    describe(".clear") do
      it("empties out all of the saved words") do
        Word.new("Blessing").save()
        Word.clear()
        expect(Word.all()).to(eq([]))
      end
    end

    describe(".find") do
      it("returns a word by its id number") do
        test_word = Word.new("Scorpion")
        test_word.save()
        test_word2 = Word.new("Jacket")
        test_word2.save()
        expect(Word.find(test_word.id())).to(eq(test_word))
      end
    end

    describe('#add_definition') do
      it("adds a new definition to the word") do
        test_word = Word.new("Oyster")
        test_definition = Definition.new("King is google")
        test_word.add_definition(test_definition)
        expect(test_word.definitions()).to(eq([test_definition]))
      end
    end
  end
