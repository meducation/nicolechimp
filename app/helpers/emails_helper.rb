module EmailsHelper
  def newsletter_mappings
    Email.newsletters.keys
  end

  def email_preview(email)
    headings = {}
    email.sections.each do |section|
      headings[section.section_heading] ||= []
      headings[section.section_heading] << section
    end
    render "emails/template", email: email, headings: headings
  end

  def header_image_for_email(email)
    case email.newsletter
    when "Cardiology Weekly"
      "https://gallery.mailchimp.com/4792e8741b3eadbf809a562de/images/57016438-81bd-4326-8aba-f245c93cc5eb.png"
    when "Junior Doctor Weekly"
      "https://gallery.mailchimp.com/4792e8741b3eadbf809a562de/images/251e9d15-8edf-41a5-a2e1-6875159fd42f.png"
    when "Medical Student Weekly"
      "https://gallery.mailchimp.com/4792e8741b3eadbf809a562de/images/540bd839-51ac-4dc4-ac2c-cbaa450163b6.png"
    end
  end

  def this_weeks_news(email)
    email.newsletter.gsub(" Weekly", '').downcase
  end
end
