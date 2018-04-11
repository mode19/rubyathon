require 'strscan'

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


Given("A string of tokens") do
    @tokenString = "#Hello\nL2 C1| L2 C2 | L2 C3\nL3 C1|L3 C2| L3 C3\n\nL4 1|L4 2 | L4 3\n"
end

When("it is parsed") do
    ss = StringScanner.new(@tokenString)
    line = ss.scan_until(/\n/)    # Grab first line
    line = line.chomp
    expect(line).to eq("#Hello")
    loop do
        for i in 1..2
                colValue = ss.scan_until( /\|/)
                break if colValue.nil?
                colValue = colValue.chomp('|')
                print " <#{i}: #{colValue}>"
        end
        colValue = ss.scan_until( /\n/)
        break if colValue.nil?
        colValue = colValue.chomp
        print " <nth: #{colValue}> \n"
        ss.skip(/\s+/).nil?
        break if ss.eos? 
    end
end

Then("an array of tokens is returned") do
    print "The above grid represents the string parsed into lines and columns"
end

