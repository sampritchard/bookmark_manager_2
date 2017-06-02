feature 'be able to add multiple tags to the same link' do
  scenario 'add in multiple tags' do
    visit('/links/new')
    fill_in 'title', with: 'Bing'
    fill_in 'url', with: 'http://www.bing.com'
    fill_in 'tags', with: 'search fake'
    click_button 'submit'
    link = Link.last
    expect(link.tags.map(&:name)).to include('search', 'fake')
  end
end
