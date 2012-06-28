# Class Issue defines the properties of the issues raised by the end user e.g open bore wells
# Specifies the data model for the issues
# Define number of properties for Issue

class Issue

  include DataMapper::Resource

  property :id,             Serial
  property :title,          String, :required => true
  property :issue_content,  Text, :required => true
  property :created_time,  DateTime, :required => true
  property :submitted_by,   String, :required => true

# Association defined for comments
has n, :comment
end