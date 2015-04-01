require "rails_helper"

feature "ToDo" do
  let(:description) { "Hey, look...  a ToDo!" }

  scenario "completion" do
    Fabricate(:to_do, description: description)
    visit to_dos_path
    within("#completed") {
      expect(page).not_to have_content(description)
    }
    find(".complete_link").click
    within("#completed") {
      expect(page).to have_content(description)
    }
  end

  scenario "creation" do
    visit to_dos_path
    expect(page).not_to have_content(description)
    fill_in "to_do_description", with: description
    click_button("Submit")
    expect(page).to have_content(description)
  end

  context "deletion" do
    background do
      Fabricate(:to_do, description: description)
      visit to_dos_path
      expect(page).to have_content(description)
      find(".delete_link").click
    end

    scenario "cancel", js: true do
      click_link("cancel")
      expect(page).to have_content(description)
    end

    scenario "confirm", js: true do
      click_link("confirm")
      expect(page).not_to have_content(description)
    end
  end
end
