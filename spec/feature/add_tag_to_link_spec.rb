require_relative 'web_helpers'

feature "Tagging Links" do
  scenario "Add a single tag to a link" do
    add_new_link
    fill_in 'tag', with: 'educational'
    click_button 'submit'
    expect(page).to have_content 'educational'
  end
end
