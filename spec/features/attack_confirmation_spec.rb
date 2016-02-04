
feature 'attack player' do

  let(:player1) { 'Dave' }
  let(:player2) { 'Mittens'}

  scenario 'confirm attack' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "#{player1} has attacked Mittens"
  end

  scenario 'reduce HP' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "#{player2} now has 90 points"
  end

end
