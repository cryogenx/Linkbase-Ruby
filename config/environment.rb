# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Linkbase::Application.initialize!

Rails.logger = Le.new('bc2a4c66-4e42-4715-a14e-2656b97d5a6e', :debug => true, :local => true)
