require "test_helper"

class FormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @form = forms(:one)
  end

  test "should get index" do
    get forms_url, as: :json
    assert_response :success
  end

  test "should create form" do
    assert_difference('Form.count') do
      post forms_url, params: { form: { first_name: @form.first_name, last_name: @form.last_name, password: @form.password } }, as: :json
    end

    assert_response 201
  end

  test "should show form" do
    get form_url(@form), as: :json
    assert_response :success
  end

  test "should update form" do
    patch form_url(@form), params: { form: { first_name: @form.first_name, last_name: @form.last_name, password: @form.password } }, as: :json
    assert_response 200
  end

  test "should destroy form" do
    assert_difference('Form.count', -1) do
      delete form_url(@form), as: :json
    end

    assert_response 204
  end
end
