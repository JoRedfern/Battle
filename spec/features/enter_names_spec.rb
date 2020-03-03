feature "Enter names" do
  scenario "submitting names" do
    visit("/")
    fill_in :player_1_name, with: "Jo"
    fill_in :player_2_name, with: "Cat"
    click_button "Submit"
    expect(page).to have_content "Jo vs. Cat"
  end
end
