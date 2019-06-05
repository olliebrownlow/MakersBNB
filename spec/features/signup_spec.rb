feature 'Signup' do
  scenario 'a new user signs up and is taken to /spaces page' do
    visit('/')
    fill_in 'email', with: 'user@makersbnb.com'
    fill_in 'password', with: 'passw0rd'
    fill_in 'password_confirmation', with: 'passw0rd'
    click_button 'Sign up'
    expect(page).to have_content("Book a Space")
  end

  scenario 'passwords do not match: user taken back to sign-up page' do
    visit('/')
    fill_in 'email', with: 'user@makersbnb.com'
    fill_in 'password', with: 'passw0rd'
    fill_in 'password_confirmation', with: 'other_passw0rd'
    click_button 'Sign up'
    expect(page).to have_content("Sign up to MakersBnB")
  end
end
