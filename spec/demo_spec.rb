describe "Demo spec" do
  
  it "should have a status PASSED" do
    puts "OK"
  end
  
  #it "should have a status FAILED" do
  #  raise "this-is-an-exception"
  #end
  
  it "should start and close a headless instance" do
    headless = Headless.new
    headless.start
    b = Watir::Browser.start 'www.google.ba'
    puts b.title
    b.close
    headless.destroy
  end
end
