require "test_helper"

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_url
    assert_response :success
  end

  test "should create profile" do
    assert_difference("Profile.count") do
      post profiles_url, params: { profile: { address: @profile.address, bank_name: @profile.bank_name, bank_num: @profile.bank_num, bank_owner: @profile.bank_owner, bank_shop: @profile.bank_shop, bank_type: @profile.bank_type, city: @profile.city, family_name: @profile.family_name, first_name: @profile.first_name, tel: @profile.tel } }
    end

    assert_redirected_to profile_url(Profile.last)
  end

  test "should show profile" do
    get profile_url(@profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_url(@profile)
    assert_response :success
  end

  test "should update profile" do
    patch profile_url(@profile), params: { profile: { address: @profile.address, bank_name: @profile.bank_name, bank_num: @profile.bank_num, bank_owner: @profile.bank_owner, bank_shop: @profile.bank_shop, bank_type: @profile.bank_type, city: @profile.city, family_name: @profile.family_name, first_name: @profile.first_name, tel: @profile.tel } }
    assert_redirected_to profile_url(@profile)
  end

  test "should destroy profile" do
    assert_difference("Profile.count", -1) do
      delete profile_url(@profile)
    end

    assert_redirected_to profiles_url
  end
end
