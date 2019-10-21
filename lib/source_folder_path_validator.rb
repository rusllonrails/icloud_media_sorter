# frozen_string_literal: true

class WrongTargetPathError < StandardError; end;

module SourceFolderPathValidator
  BLANK_PATH_ERROR_MESSAGE = 'Can\'t be blank!'
  PATH_IS_NOT_EXISTS_MESSAGE = 'Directory does not exist or it is file!'
  EMPTY_DIRECTORY_MESSAGE = 'Directory is empty!'

  def self.included(receiver)
    attr_accessor :errors

	receiver.extend  ClassMethods
	receiver.include InstanceMethods
  end

  module ClassMethods
	def validate_source_folder_path
      class_variable_set("@@validate_source_folder_path", true)
	end

	private :validate_source_folder_path
  end

  module InstanceMethods
	def valid?
	  return true unless self.class.class_variable_get("@@validate_source_folder_path")
      raise WrongTargetPathError.new BLANK_PATH_ERROR_MESSAGE unless source_folder_path

      @errors = []
      return false if directory_does_not_exists? || directory_is_empty?

	  true
	end

	private

	def directory_does_not_exists?
	  res = !Dir.exists?(source_folder_path)
	  add_error(res, PATH_IS_NOT_EXISTS_MESSAGE)

	  res
	end

	def directory_is_empty?
      res = Dir.empty?(source_folder_path)
	  add_error(res, EMPTY_DIRECTORY_MESSAGE)

	  res
	end

	def add_error(res, message)
	  @errors << message if res
	end
  end
end