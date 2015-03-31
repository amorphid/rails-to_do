require "rails_helper"

feature "ToDo" do
  let(:description) { "Hey, look...  a ToDo!" }

  scenario "creation" do
    visit to_dos_path
    fill_in "to_do_description", with: description
    click_button("Submit")
    expect(page).to have_content(description)
  end
end
