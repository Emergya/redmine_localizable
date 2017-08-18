require_dependency "custom_field_enumeration"
require "localizable"

module CustomFieldEnumerationPatch
  def self.included(base)
    base.class_eval do

      def name(original = false)
        return(original ? super() : Localizable.localize("custom_field_enumeration", id, super()))
      end

    end
  end
end
