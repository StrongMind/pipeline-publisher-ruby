=begin
#API V1

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for PipelinePublisherRuby::MessagesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MessagesApi' do
  before do
    # run before each test
    @instance = PipelinePublisherRuby::MessagesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MessagesApi' do
    it 'should create an instance of MessagesApi' do
      expect(@instance).to be_instance_of(PipelinePublisherRuby::MessagesApi)
    end
  end

  # unit tests for messages_post
  # Creates a message on the pipeline
  # 
  # @param message Note: At least one key/value pair for identifiers field is required.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'messages_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
