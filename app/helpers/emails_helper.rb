module EmailsHelper
  def newsletter_mappings
    Email.newsletters.keys
  end

  def email_preview(email)
    template = "emails/templates/#{@email.newsletter.gsub(" ", '').underscore}"
    headings = {}
    email.sections.each do |section|
      headings[section.section_heading] ||= []
      headings[section.section_heading] << section
    end
    render template, email: email, headings: headings
  end
end
