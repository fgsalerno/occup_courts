require 'test_helper'

class OccupationCourtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @occupation_court = occupation_courts(:one)
  end

  test "should get index" do
    get occupation_courts_url
    assert_response :success
  end

  test "should get new" do
    get new_occupation_court_url
    assert_response :success
  end

  test "should create occupation_court" do
    assert_difference('OccupationCourt.count') do
      post occupation_courts_url, params: { occupation_court: { court_id: @occupation_court.court_id, dia_hora_fin: @occupation_court.dia_hora_fin, dia_hora_inicio: @occupation_court.dia_hora_inicio, employee_id: @occupation_court.employee_id, obsv: @occupation_court.obsv, partner_id: @occupation_court.partner_id } }
    end

    assert_redirected_to occupation_court_url(OccupationCourt.last)
  end

  test "should show occupation_court" do
    get occupation_court_url(@occupation_court)
    assert_response :success
  end

  test "should get edit" do
    get edit_occupation_court_url(@occupation_court)
    assert_response :success
  end

  test "should update occupation_court" do
    patch occupation_court_url(@occupation_court), params: { occupation_court: { court_id: @occupation_court.court_id, dia_hora_fin: @occupation_court.dia_hora_fin, dia_hora_inicio: @occupation_court.dia_hora_inicio, employee_id: @occupation_court.employee_id, obsv: @occupation_court.obsv, partner_id: @occupation_court.partner_id } }
    assert_redirected_to occupation_court_url(@occupation_court)
  end

  test "should destroy occupation_court" do
    assert_difference('OccupationCourt.count', -1) do
      delete occupation_court_url(@occupation_court)
    end

    assert_redirected_to occupation_courts_url
  end
end
