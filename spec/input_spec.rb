require './lib/input'

describe "Input" do
	let(:input) {Input.new}
	
	before(:each) do
  	Input.send(:public, *Input.private_instance_methods)  
	end

	context "standardising text" do
		it "can remove all punctuation from the input text" do
			expect(input.remove_punctuation("I'm me! are you?")).to eq("Im me are you")
		end

		it "can make all text lowercase" do
			expect(input.make_lowercase("I'M ME! ARE YOU?")).to eq("i'm me! are you?")
		end

		it "can make text an array" do
			expect(input.make_into_array("im me are you")).to eq(["im", "me", "are", "you"])
		end

		it "can output a standardized version of the text" do
			expect(input.standardize("I'M ME! ARE YOU?")).to eq(["im", "me", "are", "you"])
		end
	end
end
