require_relative '../../app/models/link'

feature 'Adding new links' do
  scenario'User can add new links' do
    visit('/links/new')
    fill_in 'title', with: 'Google'
    fill_in 'url', with: 'http://www.google.com'
    click_button 'submit'
    expect(page).to have_content 'Google'
  end
end
