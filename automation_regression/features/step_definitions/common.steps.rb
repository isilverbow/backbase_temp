Given("I am on the database page") do
  visit("https://computer-database.herokuapp.com/computers")

  expect(Common.new.page_title.text).to match(/\d+ computers found/)
end

Given("I filter by computer name {string}") do |search_input|
  @common ||= Common.new

  @common.filter_by(search_input)
end

def filter_by(name)
  @common ||= Common.new

  @common.filter_by(name)
end
