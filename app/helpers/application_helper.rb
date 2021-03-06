module ApplicationHelper
  # Produces title for pages
  def page_title(
    title,
    base = Setting.find_by(key: "company_name_#{I18n.locale}").value
  )
    (title.empty? ? base : "#{title} | #{base}").html_safe
  end

  # Returns the Gravatar (gravatar.com) for the given user
  def gravatar_for(user, options = { size: 50, circle: false, class: '' })
    size = options[:size]
    if user.email.present?
      gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
      url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    else
      url = 'http://free-online-marketing-lessons.com/wp-content/uploads/2014/08/Gravatar-icon.png'
    end

    class_names = ['gravatar', options[:class].to_s]

    class_names.push(options[:circle] ? 'img-circle' : 'img-rounded')

    image_tag(
      url,
      alt: user.name,
      class: class_names.join(' '),
      width: size,
      height: size
    )
  end

  # Short method for checking if on certain page
  def on_page(cont, act = '')
    if act.present?
      controller.controller_name == cont.downcase &&
        controller.action_name == act.downcase
    else
      controller.controller_name == cont.downcase
    end
  end

  # Short method for checking if on certain page
  def controller_on_page(cont, act = '')
    if act.present?
      controller_name == cont.downcase &&
        action_name == act.downcase
    else
      controller_name == cont.downcase
    end
  end

  def on_admin_page?
    controller.controller_name == 'settings' ||
      (controller.controller_name == 'registrations' &&
      controller.action_name == 'edit')
  end
end
