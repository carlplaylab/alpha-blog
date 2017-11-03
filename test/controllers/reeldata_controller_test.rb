require 'test_helper'

class ReeldataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reeldatum = reeldata(:one)
  end

  test "should get index" do
    get reeldata_url
    assert_response :success
  end

  test "should get new" do
    get new_reeldatum_url
    assert_response :success
  end

  test "should create reeldatum" do
    assert_difference('Reeldatum.count') do
      post reeldata_url, params: { reeldatum: {  } }
    end

    assert_redirected_to reeldatum_url(Reeldatum.last)
  end

  test "should show reeldatum" do
    get reeldatum_url(@reeldatum)
    assert_response :success
  end

  test "should get edit" do
    get edit_reeldatum_url(@reeldatum)
    assert_response :success
  end

  test "should update reeldatum" do
    patch reeldatum_url(@reeldatum), params: { reeldatum: {  } }
    assert_redirected_to reeldatum_url(@reeldatum)
  end

  test "should destroy reeldatum" do
    assert_difference('Reeldatum.count', -1) do
      delete reeldatum_url(@reeldatum)
    end

    assert_redirected_to reeldata_url
  end
end
