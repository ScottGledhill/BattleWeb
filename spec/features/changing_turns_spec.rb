
feature 'changing turns' do

  let(:player1) { 'Dave' }
  let(:player2) { 'Mittens'}

  scenario 'when changing turns' do
    sign_in_and_play
    expect(page).to have_content('Turn: Dave')
    click_button('Attack')
    click_button('Back')
    expect(page).to have_content('Turn: Mittens')
  end

end
