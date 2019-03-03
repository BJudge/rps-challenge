feature 'enter name' do
  scenario 'player enters their name' do
    visit('/')
    fill_in "player_1_name", with: "Bart"
    click_on 'Submit'
    expect(page).to have_content 'Bart'
  end
end
