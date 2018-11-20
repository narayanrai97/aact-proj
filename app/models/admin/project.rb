module Admin
  class Project < AdminBase
    has_many :attachments
    has_many :datasets
    has_many :publications

    def self.project_list
      # A list of all project modules currently in AACT.
      # Each module (in app/models) encapsulates all info about the project.
      [ 'Anderson', 'TagNephrology', 'StandardOrgs' ]
      #[ 'TagNephrology', 'Anderson', 'Tag', 'SummaryTrends', 'Clinwiki', 'Eeg', 'StandardOrgs' ]
    end

    def self.schema_name_array
      project_list.map{|p| "Proj#{p}".underscore }
    end

    def self.schema_name_list
      schema_name_array.join(', ')
    end

  end
end
