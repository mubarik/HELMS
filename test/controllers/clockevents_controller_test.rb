require 'test_helper'

class ClockeventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clockevent = clockevents(:one)
  end

  test "should get index" do
    get clockevents_url
    assert_response :success
  end

  test "should get new" do
    get new_clockevent_url
    assert_response :success
  end

  test "should create clockevent" do
    assert_difference('Clockevent.count') do
      post clockevents_url, params: { clockevent: { detail: @clockevent.detail, event: @clockevent.event, user_id: @clockevent.user_id } }
    end

    assert_redirected_to clockevent_url(Clockevent.last)
  end

  test "should show clockevent" do
    get clockevent_url(@clockevent)
    assert_response :success
  end

  test "should get edit" do
    get edit_clockevent_url(@clockevent)
    assert_response :success
  end

  test "should update clockevent" do
    patch clockevent_url(@clockevent), params: { clockevent: { detail: @clockevent.detail, event: @clockevent.event, user_id: @clockevent.user_id } }
    assert_redirected_to clockevent_url(@clockevent)
  end

  test "should destroy clockevent" do
    assert_difference('Clockevent.count', -1) do
      delete clockevent_url(@clockevent)
    end

    assert_redirected_to clockevents_url
  end
end
