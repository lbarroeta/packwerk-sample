# frozen_string_literal: true

module SharedDecorator
  def self.dd_mm_yyyy(object)
    object.strftime('%d-%m-%Y')
  end

  def self.view_title(action_name, controller_name)
    action = I18n.t(action_name, scope: 'views.planify.customers.shared')
    controller = I18n.t(controller_name.singularize, scope: 'views.planify.customers.shared')

    "#{action} #{controller}".humanize
  end

  def self.countries_list
    ISO3166::Country.translations(I18n.locale).to_h
  end
end
