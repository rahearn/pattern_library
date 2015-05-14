module PatternLibrary
  module ApplicationHelper
    def method_missing(method, *args, &block)
      method_name = method.to_s
      if (method_name.end_with?('_path') || method_name.end_with?('_url')) && main_app.respond_to?(method)
        main_app.send method, *args
      else
        super
      end
    end
  end
end
