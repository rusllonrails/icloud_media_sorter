# frozen_string_literal: true

require './lib/source_folder_path_validator'

class MediaSorter
  include ::SourceFolderPathValidator

  attr_reader :source_folder_path
  private :source_folder_path

  validate_source_folder_path

  def initialize(source_folder_path)
  	@source_folder_path = source_folder_path
  end

  def sort!
  	# TODO
  end
end