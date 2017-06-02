require_relative '../../app/models/link'

feature 'Adding new links' do
  scenario'User can add new links' do
    visit('/links/new')
    fill_in 'title', with: 'lee'
    fill_in 'url', with: 'http://www.lee.com'
    click_button 'submit'
    expect(page).to have_content 'lee'
    # DatabaseCleaner.clean
  end

end
