require "rails_helper"

feature "Users see own todos" do
  scenario "doesn't see others todos" do

    Todo.create!(title: "Buy milk", email: "someelse@example.com")
    sign_in_as "someoneelse@example.com"
    expect(page).not_to display_todo "Buy Milk"
  end
end
