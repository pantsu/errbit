class IssueTracker
  include Mongoid::Document
  include Mongoid::Timestamps
  include HashHelper
  include Rails.application.routes.url_helpers
  default_url_options[:host] = Errbit::Application.config.action_mailer.default_url_options[:host]

  embedded_in :app, :inverse_of => :issue_tracker

  field :project_id, :type => String
  field :api_token, :type => String
  field :account, :type => String
  field :username, :type => String
  field :password, :type => String
  field :ticket_properties, :type => String

  validate :check_params

  # Subclasses are responsible for overwriting this method.
  def check_params; true; end

  def issue_title err
    "[#{ err.environment }][#{ err.where }] #{err.message.to_s.truncate(100)}"
  end

  # Allows us to set the issue tracker class from a single form.
  def type; self._type; end
  def type=(t); self._type=t; end

  def self.label; "(none)"; end
end

