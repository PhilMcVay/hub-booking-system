require 'test_helper'

class BookingDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booking_detail = booking_details(:one)
  end

  test "should get index" do
    get booking_details_url
    assert_response :success
  end

  test "should get new" do
    get new_booking_detail_url
    assert_response :success
  end

  test "should create booking_detail" do
    assert_difference('BookingDetail.count') do
      post booking_details_url, params: { booking_detail: { booking_id: @booking_detail.booking_id, company: @booking_detail.company, email: @booking_detail.email, membership: @booking_detail.membership, name: @booking_detail.name, other_notes: @booking_detail.other_notes } }
    end

    assert_redirected_to booking_detail_url(BookingDetail.last)
  end

  test "should show booking_detail" do
    get booking_detail_url(@booking_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_booking_detail_url(@booking_detail)
    assert_response :success
  end

  test "should update booking_detail" do
    patch booking_detail_url(@booking_detail), params: { booking_detail: { booking_id: @booking_detail.booking_id, company: @booking_detail.company, email: @booking_detail.email, membership: @booking_detail.membership, name: @booking_detail.name, other_notes: @booking_detail.other_notes } }
    assert_redirected_to booking_detail_url(@booking_detail)
  end

  test "should destroy booking_detail" do
    assert_difference('BookingDetail.count', -1) do
      delete booking_detail_url(@booking_detail)
    end

    assert_redirected_to booking_details_url
  end
end
