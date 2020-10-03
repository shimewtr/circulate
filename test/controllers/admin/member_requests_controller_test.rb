require "test_helper"

module Admin
  class MemberRequestsControllerTest < ActionDispatch::IntegrationTest
    include Devise::Test::IntegrationHelpers

    setup do
      3.times do
        create(:member)
      end
      @user = users(:admin)
      sign_in @user
    end

    test "should get index" do
      get admin_member_requests_url
      assert_response :success
    end
  end
end
