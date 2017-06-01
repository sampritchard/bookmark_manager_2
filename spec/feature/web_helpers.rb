def add_new_link
  visit('/links/new')
  fill_in 'title', with: 'Bleep'
  fill_in 'url', with: 'http://www.Bleep.com'
end
