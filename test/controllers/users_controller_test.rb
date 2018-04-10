require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
    @other = users(:two)
  end



  test "should get new" do
    get new_user_url
    assert_response :success
  end

  #  assert_redirected_to user_url(User.last)
  #end
  test "should not allow the admin attribute to be edited via the web" do
    log_in_as(@other)
    assert_not @other.admin?
    patch user_path(@other), params: {
                                    user: { password:              "password",
                                            password_confirmation: "password",
                                            admin: true } }
    assert_not @other.admin?
  end
  #test "should update user" do
  #  patch user_url(@user), params: { user: { email: @user.email, passworld: @user.passworld, phone: @user.phone, user_name: @user.user_name } }
  #  assert_redirected_to user_url(@user)
  #end
end
