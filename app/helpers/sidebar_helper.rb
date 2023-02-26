module SidebarHelper
  def option_status(url)
    request.url.include?(url) ? 'active nav-link' : 'nav-link'
  end
end
