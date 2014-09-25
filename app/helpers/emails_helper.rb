module EmailsHelper
  def newsletter_mappings
    Email.newsletters.keys
  end
end
