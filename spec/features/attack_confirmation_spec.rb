
feature 'attack player' do
  let(:player1) { 'Dave' }
  let(:player2) { 'Mittens'}
  # As Player 1,
  # So I can win a game of Battle,
  # I want to attack Player 2, and I want to get a confirmation
  scenario 'confirm attack' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "#{player1} has attacked Mittens"
  end

  # As Player 1,
  # So I can start to win a game of Battle,
  # I want my attack to reduce Player 2's HP
  scenario 'reduce HP' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "#{player2} now has 90 points"
  end
end
