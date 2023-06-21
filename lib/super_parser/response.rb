# frozen_string_literal: true

require_relative 'response_objects/base'
require_relative 'response_objects/name'
require_relative 'response_objects/email'
require_relative 'response_objects/employer'
require_relative 'response_objects/total_experience'
require_relative 'response_objects/education'
require_relative 'response_objects/address'
require_relative 'response_objects/project'
require_relative 'response_objects/skill'

module SuperParser # :nodoc:
  class Response
    attr_accessor :response

    def initialize(response)
      @response = JSON.parse(response)['data']
    end

    def name
      ResponseObjects::Name.new(response['name'])
    end

    def total_experience
      ResponseObjects::TotalExperience.new(response['total_experience'])
    end

    def address
      ResponseObjects::Address.new(response['address'])
    end

    def skills
      ResponseObjects::Skill.new(response['skills'])
    end

    def generated_summary_text
      response['generated_summary_text']
    end

    def personal_urls
      response['personal_urls']
    end

    def total_time
      response['total_time']
    end

    def email
      response['email'].map do |email|
        ResponseObjects::Email.new(email)
      end
    end

    def employer
      response['employer'].map do |employer|
        ResponseObjects::Employer.new(employer)
      end
    end

    def education
      response['education'].map do |education|
        ResponseObjects::Education.new(education)
      end
    end

    def projects
      response['projects'].map do |projects|
        ResponseObjects::Project.new(projects)
      end
    end

    # def method_missing(method_name, *_args)
    #   response[method_name.to_s]
    # end
  end
end
