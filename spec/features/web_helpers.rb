def register
  visit('/')
  fill_in "player_1_name", with: "Bart"
  click_on 'Submit'
end
