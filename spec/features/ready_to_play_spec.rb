feature 'starting game' do
  scenario 'player goes to game page' do
    register
    click_on 'Play'
    expect(page).to have_content "Game Begins"
  end
end
