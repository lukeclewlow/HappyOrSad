require 'spec_helper'

describe("On the homepage") do
	
	it("you can see an explanatory title") do
		visit('/')
		expect(page).to have_content("Please enter your text below for mood analysis...")
	end

	it("a user can input happy text and get the correct outcome") do
		visit('/')
		fill_in("userinput", :with =>  "I was glad to go to the beach. Very glad. Even though it was a miserable day.")
		click_button('Submit')
		expect(page).to have_content("Happy")
	end

	it("a user can input sad text and get the correct outcome") do
		visit('/')
		fill_in("userinput", :with => "Im miserable")
		click_button('Submit')
		expect(page).to have_content("Sad")
	end

	it("a user can input unknown text and get the correct outcome") do
		visit('/')
		fill_in("userinput", :with => "Im me")
		click_button('Submit')
		expect(page).to have_content("Unknown")
	end
end