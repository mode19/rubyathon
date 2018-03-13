Given("I have a decision to make") do
end

When("I decide yes") do
    @result = "BLOCK0"
    if( "YES" == "NOPE" )
        @result = "BLOCK1"
    elsif ("YES" == "NOTYET")
        @result = "BLOCK2"
    else
        @result = "BLOCK3"
    end
end

Then("I should execute if or else block but not both") do
  expect(@result).to eq("BLOCK3")
end

Given("I have something to execute repeatedly") do
    @result = 0
end

When("I loop using for loop") do
    for i in 0..5
        @result += 1
    end
end

When("I loop using a while loop") do
    $i = 0
    $num = 5

    while $i <= $num  do
           $i +=1
    end

    @result = $i
end

Then("The statement is executed until the number of iterations is reached") do
  expect(@result).to eq(6)
end

Then("The statement is executed until the end-condition is reached") do
  expect(@result).to eq(6)
end

