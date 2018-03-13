Given("a string contains the substring X") do
    @myString = "This is a string containig the word superness amongst others"
end

When("search is excuted") do
    @result = false
    if( @myString.include? "superness" )
        print "Word has been found!"
        @result = true
    end
end

Then("search returns true") do
    expect(@result).to eq(true)
end

Given("a string containing commas") do
    @myString = "A,b,c,d,e,f,g"
end

When("the user splits it") do
    @mySplitResult = @myString.split( ",")
end

Then("an array is created with an entry for each substring between the commas") do
    expect(@mySplitResult.length).to eq(7)
    expect(@mySplitResult[0]).to eq("A")
    expect(@mySplitResult[1]).to eq("b")
end

