Given("that I store a list of numbers in an array") do
    @myArray = [0, "ONE", 2, "three", "four"]
end

When("I iterate an array") do
    @newArray = []
    @myArray.each { |a| print "insert element\n"; @newArray.insert(0,a);  }
end

Then("I should see the same list repeated back") do
    expect(@newArray.length).to eq(5)
end

Given("that I have an array of elements") do
    @myArray = [0, "one", 2, "three", "four"]
end

When("I assign a new value into an existing element") do
    @myArray[0] = "ZERO"
    @myArray[4] = "FOUR"

end

Then("the array is modified to contain the new value") do
    expect(@myArray[0]).to eq("ZERO")
    expect(@myArray[1]).to eq("one")
    expect(@myArray[4]).to eq("FOUR")
end

Given("that I have a list of strings") do
    @myArray = ["z", "k", "d", "a", "b", "c"]
end

When("I sort the array") do
    @myArray = @myArray.sort
end

Then("the contents of the array is now in alpha-numeric order") do
    expect(@myArray[0]).to eq("a")
    expect(@myArray[5]).to eq("z")
end

Given("that I have an array of {int} items") do |int|
    @myArray = ["z", "k", "d", "a", "b", "c"]
end

When("I remove one element from the middle") do
    @myArray.delete_at(0)
    @myArray.delete_at(0)
    @myArray.delete_at(0)
    @myArray.delete_at(0)
end

Then("I have an array of {int} items") do |int|
    @myArray.delete_at(2)
end

