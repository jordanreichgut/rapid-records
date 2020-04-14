require 'test_helper'

class PatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get patients_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_url
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post patients_url, params: { patient: { blood_type: @patient.blood_type, date_of_birth: @patient.date_of_birth, eye_color: @patient.eye_color, first_name: @patient.first_name, height: @patient.height, last_name: @patient.last_name, picture_url: @patient.picture_url, race: @patient.race, sex: @patient.sex, weight: @patient.weight } }
    end

    assert_redirected_to patient_url(Patient.last)
  end

  test "should show patient" do
    get patient_url(@patient)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_url(@patient)
    assert_response :success
  end

  test "should update patient" do
    patch patient_url(@patient), params: { patient: { blood_type: @patient.blood_type, date_of_birth: @patient.date_of_birth, eye_color: @patient.eye_color, first_name: @patient.first_name, height: @patient.height, last_name: @patient.last_name, picture_url: @patient.picture_url, race: @patient.race, sex: @patient.sex, weight: @patient.weight } }
    assert_redirected_to patient_url(@patient)
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete patient_url(@patient)
    end

    assert_redirected_to patients_url
  end
end
