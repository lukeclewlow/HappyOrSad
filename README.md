# Happy or Sad

### A Ruby app to evaluate your text and tell you if it's happy or sad!

To run the app, open the root directory, and type into console: 

`bundle install`

`rackup`

Browse to `http://localhost:9292`

Type in your text to be evaluated on the basis of the given happy and sad words, and see whether what you're saying is Happy, Sad or Unknown.

To run the tests type into console:

`rspec`

Technologies
------------
* Ruby
* Sinatra
* RSpec

My Approach
-----------

I started by thinking of the different things that needed to be done in order to reach the desired outcome. This helped me decide to have 2 classes.

* Input - to filter user input into a standardized format
* Calc - to calculate whether the user's text used more happy or sad words

I then used Test Driven Development to move forward with my classes and end up with solid business logic.

I decided to use Sinatra as a server for my app, as it is lightweight, quick to set-up and was perfectly adequate to deal with the simplicity of this particular app. I wanted to keep my controller as skinny as possible so ensured that all the logic that could do, sat in the model.
