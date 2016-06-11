Before do |scenario|
  @scenario = scenario
  initialize_scenario
end

def initialize_scenario
  @browser ||= Watir::Browser.new :chrome
  @browser.cookies.clear
  at_exit do
    @browser.close
  end
end
