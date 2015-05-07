require './lib/calc'

describe "Calc" do
	let(:calc) { Calc.new }

	before(:each) do
  	Calc.send(:public, *Calc.private_instance_methods)  
	end
	
	context "contains the neccessary words to make the decisions" do
		it "has a list of happy words as specified in the brief" do
			expect(calc.happy.length).to eq(9)
		end

		it "has a list of sad words as specified in the brief" do
			expect(calc.sad.length).to eq(5)
		end

		it "can validate if the user has entered any happy or sad words" do
			expect(calc.validate([" "])).to be(false)
		end
	end

	context "can calculate counts of happy and sad words" do
		it "knows how many times a text includes a particular happy word" do
			expect(calc.word_count(["happy", "delighted", "and", "happy"], "happy")).to eq(2)
		end

		it "knows how many times a text includes a particular sad word" do
			expect(calc.word_count(["im", "sad", "and", "sad", "and", "sad"], "sad")).to eq(3)
		end

		it "can work out the total of all happy or sad words in a text" do
			expect(calc.total_word_count(["im", "delightful", "happy", "glad"], calc.happy)).to eq(3)
		end
	end

	context "can say whether a text is happy or sad" do
		it "can tell if a text has 50% more happy words than sad words" do
			expect(calc.happy_or_sad(["im", "delightful", "happy", "glad", "sad"])).to eq("Happy")
		end

		it "can tell if a text has 50% more sad words than happy words" do
			expect(calc.happy_or_sad(["sad", "sad", "sad", "happy"])).to eq("Sad")
		end

		it "can tell when it doesn't meet either criteria" do
			expect(calc.happy_or_sad(["sad", "sad", "happy", "happy"])).to eq("Unknown")
		end

		it "will return unknown if no happy or sad words have been entered" do
			expect(calc.mood_of(["im", "me"])).to eq("Unknown")
		end
	end
end