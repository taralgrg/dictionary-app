require('rspec')
  require('definition')

  describe('Definition') do
    before() do
      Definition.clear()
    end

    describe("#definition") do
      it("returns the definition of the word") do
        test_define = Definition.new("Call is the new era")
        expect(test_define.definition()).to(eq("Call is the new era"))
      end
    end

  describe(".all") do
      it("is empty at first") do
        expect(Definition.all()).to(eq([]))
      end
    end

   describe("#save") do
      it("adds a definition to the array of saved definitions") do
        test_define = Definition.new("This is explaination")
        test_define.save()
        expect(Definition.all()).to(eq([test_define]))
      end
    end

   describe(".clear") do
      it("empties out all of the saved definitions") do
        Definition.new("This is the definition").save()
        Definition.clear()
        expect(Definition.all()).to(eq([]))
      end
    end

    describe("#id") do
      it("returns the id of the definition") do
        test_define = Definition.new("Google is the definition")
        test_define.save()
        expect(test_define.id()).to(eq(1))
      end
    end

    describe(".find") do
    it("returns a definition by its id number") do
      test_define = Definition.new("Google it lazy")
      test_define.save()
      test_define2 = Definition.new("I wont do it")
      test_define2.save()
      expect(Definition.find(test_define.id())).to(eq(test_define))
    end
  end
end
