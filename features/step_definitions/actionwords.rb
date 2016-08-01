# encoding: UTF-8

module Actionwords
  def i_open_google_home_page
    visit('http://www.google.com.br')
  end

  def i_search_for_p1(p1)
    fill_in 'q', :with => p1
  end

  def i_see_p1_in_page_results(p1)
    expect(page).to have_content p1
  end
end