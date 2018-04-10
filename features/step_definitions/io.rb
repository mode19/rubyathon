require 'net/http'

When("Program load data file") do
    @file_contents = File.read('README.md')
end

Then("Conent of file is available in memory") do
    expect(@file_contents).to include "Rubyathon"
end

When("Program saves a file") do
    File.write "/tmp/writesomefile", "THISFILEISRAD"
end

Then("the file exists on permament storage") do
    newFileContent = File.read( "/tmp/writesomefile")
    expect(newFileContent).to include "FILEISRAD"
end

When("Program deleles a file") do
    File.delete '/tmp/writesomefile'
end

Then("the file no longer exists") do
    expect(File.exists?("/tmp/writesomefile")).to be(false)
end

Given("A connection is established to another computer") do
    @googleResponse = Net::HTTP.get('google.com', '/') # => String
end

When("The program sends a request") do
end

Then("a response is received") do
    expect(@googleResponse).to include "<HTML"
end

