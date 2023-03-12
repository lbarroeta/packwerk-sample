# frozen_string_literal: true

module SidebarHelper
  def option_status(url)
    request.url.eql?(url) ? 'active' : nil
  end
end
