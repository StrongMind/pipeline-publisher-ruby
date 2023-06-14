FactoryBot.define do
  factory :api_client, class: PipelinePublisher::ApiClient do
    # Define any necessary attributes for the ApiClient object
    # For example:
    config { PipelinePublisher::Configuration.new }
  end
end