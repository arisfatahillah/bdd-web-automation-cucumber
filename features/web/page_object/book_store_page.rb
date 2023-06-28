# encoding: utf-8

class BookStorePage < SitePrism::Page
  path = '/books'
  set_url(ENV['BASE_URL'] + path)

  element :search_box, :xpath, "//input[@id='searchBox']"

  def search_book(book_name)
    wait_until_search_box_visible(wait: 2)
    search_box.set(book_name)
    sleep 1
  end
end
