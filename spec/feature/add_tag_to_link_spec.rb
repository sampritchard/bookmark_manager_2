feature "Tagging Links" do
  scenario "Add a single tag to a link" do
    visit('/links/new')
    fill_in 'title', with: 'Sleep'
    fill_in 'url', with: 'http://www.sleep.com'
    fill_in 'tags', with: 'education'
    click_button 'submit'

    link = Link.first
    expect(link.tags.map(&:name)).to include('education')
  end
end
