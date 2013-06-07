if !defined? APP_URI
  case InterfaceUtils::Server.environment
  when InterfaceUtils::Server::DEVELOPMENT
    APP_URI = "dev-subjects.#{InterfaceUtils::Server.get_domain}"
  when InterfaceUtils::Server::STAGING
    APP_URI = "staging-subjects.#{InterfaceUtils::Server.get_domain}"
  when InterfaceUtils::Server::PRODUCTION
    APP_URI = "subjects.#{InterfaceUtils::Server.get_domain}"
  when InterfaceUtils::Server::LOCAL
    APP_URI = 'http://localhost/shanti/subjects/'
  else
    APP_URI = "http://subjects.#{InterfaceUtils::Server.get_domain}/"
  end
end