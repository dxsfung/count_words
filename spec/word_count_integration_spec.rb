require('capybara/rspec')
  require('./app')
  Capybara.app = Sinatra::Application
  set(:show_exceptions, false)

  describe('the word count path', {:type => :feature}) do
    # it('processes the user entries and returns results') do
    #   visit('/')
    #   # find(:select, from, options).find(:option, value, options).select_option
    #   # find('option').find('Case Sensitive Any').select_option
    #   # fill_in('passage', :with => 'The big brown fox jumps over the lazy dog.')
    #   # fill_in('word', :with => 'big')
    #   # click_button('Submit')
    #   expect(page).to have_content('1')
    # end
  #   it('processes the user entries and returns results') do
  #     visit('/')
  #     # find(:select, from, options).find(:option, value, options).select_option
  #     # find('option').find('Case Sensitive Word Only').select_option
  #     # fill_in('passage', :with => 'The big brown fox jumps over the lazy dog.')
  #     # fill_in('word', :with => 'b')
  #     # click_button('Submit')
  #     expect(page).to have_content('0')
  #   end

  end
