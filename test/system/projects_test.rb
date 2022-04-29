require "application_system_test_case"

class ProjectsTest < ApplicationSystemTestCase
  setup do
    @project = projects(:one)
  end

  test "Visiting the index" do
    visit projects_url
    assert_selector "h1", text: "Projects"
  end

  test "Creating a Project" do
    visit projects_url
    click_on "New Project"

    fill_in "Description", with: @project.description
    fill_in "Title", with: @project.title
    click_on "Create Project"

    assert_text "Project was successfully created"
    click_on "Back"
  end

  test "Updating a Project" do
    visit projects_url
    click_on "Edit", match: :first

    fill_in "Description", with: @project.description
    fill_in "Title", with: @project.title
    click_on "Update Project"

    assert_text "Project was successfully updated"
    click_on "Back"
  end

  test "Destroying a Project" do
    visit projects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project was successfully destroyed"
  end
end
