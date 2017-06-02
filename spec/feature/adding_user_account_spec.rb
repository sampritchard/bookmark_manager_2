feature 'Adding a user account' do
  scenario 'sees a signup form' do
    visit('/user/add')
    expect(page.status_code).to eq 200
    expect(page).to have_field('user')
    expect(page).to have_field('password')
  end
end
