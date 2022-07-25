require 'test_helper'

class JobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get jobs_url, as: :json
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post jobs_url, params: { job: { apply_url: @job.apply_url, description: @job.description, job_type: @job.job_type, location: @job.location, remote_ok: @job.remote_ok, title: @job.title, url: @job.url } }, as: :json
    end

    assert_response 201
  end

  test "should show job" do
    get job_url(@job), as: :json
    assert_response :success
  end

  test "should update job" do
    patch job_url(@job), params: { job: { apply_url: @job.apply_url, description: @job.description, job_type: @job.job_type, location: @job.location, remote_ok: @job.remote_ok, title: @job.title, url: @job.url } }, as: :json
    assert_response 200
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete job_url(@job), as: :json
    end

    assert_response 204
  end
end
