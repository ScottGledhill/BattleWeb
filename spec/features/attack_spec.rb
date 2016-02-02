feature 'Attack' do
  scenario 'attack an opponent' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'John attacked John'
  end

    scenario 'Reduce HP on attack' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Reduced HP'
  end
end
