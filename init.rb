# encoding: UTF-8

# Copyright © Emilio González Montaña
# Licence: Attribution & no derivates
#   * Attribution to the plugin web page URL should be done if you want to use it.
#     https://redmine.ociotec.com/projects/localizable
#   * No derivates of this plugin (or partial) are allowed.
# Take a look to licence.txt file at plugin root folder for further details.

# This plugin should be reloaded in development mode.
if (Rails.env == "development")
  ActiveSupport::Dependencies.autoload_once_paths.reject!{|x| x =~ /^#{Regexp.escape(File.dirname(__FILE__))}/}
end

require "redmine"
require "rubygems"

Role.send(:include, RolePatch)
Tracker.send(:include, TrackerPatch)
IssueStatus.send(:include, IssueStatusPatch)
CustomField.send(:include, CustomFieldPatch)
Enumeration.send(:include, EnumerationPatch)
CustomFieldEnumeration.send(:include, CustomFieldEnumerationPatch)

Redmine::Plugin.register :redmine_localizable do
  name "Localizable plugin"
  url "https://redmine.ociotec.com/projects/localizable"
  author "Emilio González Montaña"
  author_url "http://ociotec.com"
  description "This is a plugin for Redmine that is used to show strings (issue types, issue statuses, enumerations, ...) in serveral languages"
  version "0.4.0"
  requires_redmine :version_or_higher => "2.1.0"

  requires_redmine_plugin :redmine_base_deface, :version_or_higher => '0.0.1'
  
  settings(:default => {"default_language" => "en",
                        "locales_to_translate" => [],
                        "locales" => {"tracker" => {},
                                      "issue_status" => {}}},
           :partial => "settings/localizable")
end
