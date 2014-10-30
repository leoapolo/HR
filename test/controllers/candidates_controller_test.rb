require 'test_helper'

class CandidatesControllerTest < ActionController::TestCase
  setup do
    @candidate = candidates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidate" do
    assert_difference('Candidate.count') do
      post :create, candidate: { candidate_id: @candidate.candidate_id, channel: @candidate.channel, channel_detail: @candidate.channel_detail, city_of_birth: @candidate.city_of_birth, company1: @candidate.company1, company2: @candidate.company2, company3: @candidate.company3, company4: @candidate.company4, company5: @candidate.company5, country_of_birth: @candidate.country_of_birth, current_job_title: @candidate.current_job_title, current_location: @candidate.current_location, current_salary: @candidate.current_salary, date_of_apply: @candidate.date_of_apply, date_of_birth: @candidate.date_of_birth, education1_end_date: @candidate.education1_end_date, education1_level: @candidate.education1_level, education1_start_date: @candidate.education1_start_date, education2_end_date: @candidate.education2_end_date, education2_level: @candidate.education2_level, education2_start_date: @candidate.education2_start_date, education3_end_date: @candidate.education3_end_date, education3_level: @candidate.education3_level, education3_start_date: @candidate.education3_start_date, education4_end_date: @candidate.education4_end_date, education4_level: @candidate.education4_level, education4_start_date: @candidate.education4_start_date, education5_end_date: @candidate.education5_end_date, education5_level: @candidate.education5_level, education5_start_date: @candidate.education5_start_date, email: @candidate.email, ex_merkler: @candidate.ex_merkler, expect_salary: @candidate.expect_salary, field10: @candidate.field10, field1: @candidate.field1, field2: @candidate.field2, field3: @candidate.field3, field4: @candidate.field4, field5: @candidate.field5, field6: @candidate.field6, field7: @candidate.field7, field8: @candidate.field8, field9: @candidate.field9, first_name: @candidate.first_name, language10: @candidate.language10, language10_level: @candidate.language10_level, language1: @candidate.language1, language1_level: @candidate.language1_level, language2: @candidate.language2, language2_level: @candidate.language2_level, language3: @candidate.language3, language3_level: @candidate.language3_level, language4: @candidate.language4, language4_level: @candidate.language4_level, language5: @candidate.language5, language5_level: @candidate.language5_level, language6: @candidate.language6, language6_level: @candidate.language6_level, language7: @candidate.language7, language7_level: @candidate.language7_level, language8: @candidate.language8, language8_level: @candidate.language8_level, language9: @candidate.language9, language9_level: @candidate.language9_level, last_name: @candidate.last_name, major1: @candidate.major1, major2: @candidate.major2, major3: @candidate.major3, major4: @candidate.major4, major5: @candidate.major5, note1: @candidate.note1, note2: @candidate.note2, note3: @candidate.note3, note4: @candidate.note4, note5: @candidate.note5, onboard_date: @candidate.onboard_date, preferred_contact_phone: @candidate.preferred_contact_phone, preferred_work_location: @candidate.preferred_work_location, referred_by: @candidate.referred_by, req_position_title: @candidate.req_position_title, self_assessment: @candidate.self_assessment, title1: @candidate.title1, title2: @candidate.title2, title3: @candidate.title3, title4: @candidate.title4, title5: @candidate.title5, univercity1: @candidate.univercity1, univercity2: @candidate.univercity2, univercity3: @candidate.univercity3, univercity4: @candidate.univercity4, univercity5: @candidate.univercity5, work1_desc: @candidate.work1_desc, work1_end_date: @candidate.work1_end_date, work1_start_date: @candidate.work1_start_date, work2_desc: @candidate.work2_desc, work2_end_date: @candidate.work2_end_date, work2_start_date: @candidate.work2_start_date, work3_desc: @candidate.work3_desc, work3_end_date: @candidate.work3_end_date, work3_start_date: @candidate.work3_start_date, work4_desc: @candidate.work4_desc, work4_end_date: @candidate.work4_end_date, work4_start_date: @candidate.work4_start_date, work5_desc: @candidate.work5_desc, work5_end_date: @candidate.work5_end_date, work5_start_date: @candidate.work5_start_date }
    end

    assert_redirected_to candidate_path(assigns(:candidate))
  end

  test "should show candidate" do
    get :show, id: @candidate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candidate
    assert_response :success
  end

  test "should update candidate" do
    patch :update, id: @candidate, candidate: { candidate_id: @candidate.candidate_id, channel: @candidate.channel, channel_detail: @candidate.channel_detail, city_of_birth: @candidate.city_of_birth, company1: @candidate.company1, company2: @candidate.company2, company3: @candidate.company3, company4: @candidate.company4, company5: @candidate.company5, country_of_birth: @candidate.country_of_birth, current_job_title: @candidate.current_job_title, current_location: @candidate.current_location, current_salary: @candidate.current_salary, date_of_apply: @candidate.date_of_apply, date_of_birth: @candidate.date_of_birth, education1_end_date: @candidate.education1_end_date, education1_level: @candidate.education1_level, education1_start_date: @candidate.education1_start_date, education2_end_date: @candidate.education2_end_date, education2_level: @candidate.education2_level, education2_start_date: @candidate.education2_start_date, education3_end_date: @candidate.education3_end_date, education3_level: @candidate.education3_level, education3_start_date: @candidate.education3_start_date, education4_end_date: @candidate.education4_end_date, education4_level: @candidate.education4_level, education4_start_date: @candidate.education4_start_date, education5_end_date: @candidate.education5_end_date, education5_level: @candidate.education5_level, education5_start_date: @candidate.education5_start_date, email: @candidate.email, ex_merkler: @candidate.ex_merkler, expect_salary: @candidate.expect_salary, field10: @candidate.field10, field1: @candidate.field1, field2: @candidate.field2, field3: @candidate.field3, field4: @candidate.field4, field5: @candidate.field5, field6: @candidate.field6, field7: @candidate.field7, field8: @candidate.field8, field9: @candidate.field9, first_name: @candidate.first_name, language10: @candidate.language10, language10_level: @candidate.language10_level, language1: @candidate.language1, language1_level: @candidate.language1_level, language2: @candidate.language2, language2_level: @candidate.language2_level, language3: @candidate.language3, language3_level: @candidate.language3_level, language4: @candidate.language4, language4_level: @candidate.language4_level, language5: @candidate.language5, language5_level: @candidate.language5_level, language6: @candidate.language6, language6_level: @candidate.language6_level, language7: @candidate.language7, language7_level: @candidate.language7_level, language8: @candidate.language8, language8_level: @candidate.language8_level, language9: @candidate.language9, language9_level: @candidate.language9_level, last_name: @candidate.last_name, major1: @candidate.major1, major2: @candidate.major2, major3: @candidate.major3, major4: @candidate.major4, major5: @candidate.major5, note1: @candidate.note1, note2: @candidate.note2, note3: @candidate.note3, note4: @candidate.note4, note5: @candidate.note5, onboard_date: @candidate.onboard_date, preferred_contact_phone: @candidate.preferred_contact_phone, preferred_work_location: @candidate.preferred_work_location, referred_by: @candidate.referred_by, req_position_title: @candidate.req_position_title, self_assessment: @candidate.self_assessment, title1: @candidate.title1, title2: @candidate.title2, title3: @candidate.title3, title4: @candidate.title4, title5: @candidate.title5, univercity1: @candidate.univercity1, univercity2: @candidate.univercity2, univercity3: @candidate.univercity3, univercity4: @candidate.univercity4, univercity5: @candidate.univercity5, work1_desc: @candidate.work1_desc, work1_end_date: @candidate.work1_end_date, work1_start_date: @candidate.work1_start_date, work2_desc: @candidate.work2_desc, work2_end_date: @candidate.work2_end_date, work2_start_date: @candidate.work2_start_date, work3_desc: @candidate.work3_desc, work3_end_date: @candidate.work3_end_date, work3_start_date: @candidate.work3_start_date, work4_desc: @candidate.work4_desc, work4_end_date: @candidate.work4_end_date, work4_start_date: @candidate.work4_start_date, work5_desc: @candidate.work5_desc, work5_end_date: @candidate.work5_end_date, work5_start_date: @candidate.work5_start_date }
    assert_redirected_to candidate_path(assigns(:candidate))
  end

  test "should destroy candidate" do
    assert_difference('Candidate.count', -1) do
      delete :destroy, id: @candidate
    end

    assert_redirected_to candidates_path
  end
end
