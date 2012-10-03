steps_for :test do
  step 'I run this acceptance test' do
    true
  end

  step 'it should work' do
    true
  end

  step 'it should be run using JavaScript' do
    Capybara.current_driver.should == :webkit
  end
end