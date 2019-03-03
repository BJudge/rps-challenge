feature 'enter name' do
  scenario 'player enters their name' do
    register
    expect(page).to have_content 'Bart'
  end
end
