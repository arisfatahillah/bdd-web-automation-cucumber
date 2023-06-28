Given(/^user go book store page/) do
  @browser = BookStorePage.new
  @browser.load
end

When(/^user search book name "([^"]*)"/) do |book_name|
  @browser.search_book(book_name)
end
