require "application_system_test_case"

class ProfilesTest < ApplicationSystemTestCase
  setup do
    @profile = profiles(:one)
  end

  test "visiting the index" do
    visit profiles_url
    assert_selector "h1", text: "Profiles"
  end

  test "should create profile" do
    visit profiles_url
    click_on "New profile"

    fill_in "Address", with: @profile.address
    fill_in "Bank name", with: @profile.bank_name
    fill_in "Bank num", with: @profile.bank_num
    fill_in "Bank owner", with: @profile.bank_owner
    fill_in "Bank shop", with: @profile.bank_shop
    fill_in "Bank type", with: @profile.bank_type
    fill_in "City", with: @profile.city
    fill_in "Family name", with: @profile.family_name
    fill_in "First name", with: @profile.first_name
    fill_in "Tel", with: @profile.tel
    click_on "Create Profile"

    assert_text "Profile was successfully created"
    click_on "Back"
  end

  test "should update Profile" do
    visit profile_url(@profile)
    click_on "Edit this profile", match: :first

    fill_in "Address", with: @profile.address
    fill_in "Bank name", with: @profile.bank_name
    fill_in "Bank num", with: @profile.bank_num
    fill_in "Bank owner", with: @profile.bank_owner
    fill_in "Bank shop", with: @profile.bank_shop
    fill_in "Bank type", with: @profile.bank_type
    fill_in "City", with: @profile.city
    fill_in "Family name", with: @profile.family_name
    fill_in "First name", with: @profile.first_name
    fill_in "Tel", with: @profile.tel
    click_on "Update Profile"

    assert_text "Profile was successfully updated"
    click_on "Back"
  end

  test "should destroy Profile" do
    visit profile_url(@profile)
    click_on "Destroy this profile", match: :first

    assert_text "Profile was successfully destroyed"
  end
end
