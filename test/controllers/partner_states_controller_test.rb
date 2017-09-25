require 'test_helper'

class PartnerStatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @partner_state = partner_states(:one)
  end

  test "should get index" do
    get partner_states_url
    assert_response :success
  end

  test "should get new" do
    get new_partner_state_url
    assert_response :success
  end

  test "should create partner_state" do
    assert_difference('PartnerState.count') do
      post partner_states_url, params: { partner_state: { desc: @partner_state.desc } }
    end

    assert_redirected_to partner_state_url(PartnerState.last)
  end

  test "should show partner_state" do
    get partner_state_url(@partner_state)
    assert_response :success
  end

  test "should get edit" do
    get edit_partner_state_url(@partner_state)
    assert_response :success
  end

  test "should update partner_state" do
    patch partner_state_url(@partner_state), params: { partner_state: { desc: @partner_state.desc } }
    assert_redirected_to partner_state_url(@partner_state)
  end

  test "should destroy partner_state" do
    assert_difference('PartnerState.count', -1) do
      delete partner_state_url(@partner_state)
    end

    assert_redirected_to partner_states_url
  end
end
