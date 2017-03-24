require('capybara/rspec')
  require('./app')
  Capybara.app = Sinatra::Application
  set(:show_exceptions, false)

  describe('the word count path', {:type => :feature}) do
    # it('processes the user entries and returns results') do
    #   visit('/')
    #   # find(:select, from, options).find(:option, value, options).select_option
    #   # find('p1').find('rock').select_option
    #   # fill_in('p1', :with => 'rock')
    #   # click_button('Send')
    #   click_button('Go!')
    #   expect(page).to have_content('Ties')
    # end
  #   it('processes the user entries and returns results') do
  #     visit('/')
  #     # find(:select, from, options).find(:option, value, options).select_option
  #     # find('Player 1').find('paper').select_option
  #     # fill_in('p1', :with => 'rock')
  #     # click_button('Send')
  #     click_button('Play with computer')
  #     expect(page).to have_content('Random')
  #   end

  end
