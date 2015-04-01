require "rails_helper"

feature "ToDo" do
  let(:description) { "Hey, look...  a ToDo!" }

  scenario "creation" do
    visit to_dos_path
    expect(page).not_to have_content(description)
    fill_in "to_do_description", with: description
    click_button("Submit")
    expect(page).to have_content(description)
  end

  scenario "confirm deletion", js: true do
    to_do = Fabricate(:to_do, description: description)
    visit to_dos_path
    expect(page).to have_content(description)
    within("#to_do_#{to_do.id}") {
      click_link("del")
      click_link("confirm")
    }
    expect(page).not_to have_content(description)
  end

  scenario "cancel deletion", js: true do
    to_do = Fabricate(:to_do, description: description)
    visit to_dos_path
    expect(page).to have_content(description)
    within("#to_do_#{to_do.id}") {
      click_link("del")
      click_link("cancel")
    }
    expect(page).to have_content(description)
  end
end
