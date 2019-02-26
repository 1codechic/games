class Api::ExamplePagesController < ApplicationController

  def fortune_teller
    #make 3 fortunes
    @fortunes =["you will be rich", "you will be a ruby ninja", "you will succeed"]

    #get a random one
    @fortune = @fortunes.shuffle[0]
    #show the user
     render 'fortune.json.jbuilder'
  end

  def lottery
  #return 6 random numbers between 1 and 60
  #make an array
  @numbers = []
  #make something that loops 6 times
  6.times do
    #inside the loop, add in a random #
    @numbers << rand(60) + 1
    end
    #show the numbers
    render 'my_lottery.json.jbuilder'
  end
  

  

end
