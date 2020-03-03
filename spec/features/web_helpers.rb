def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Jo'
  fill_in :player_2_name, with: 'Cat'
  click_button 'Submit'
end
