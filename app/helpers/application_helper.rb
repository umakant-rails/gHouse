module ApplicationHelper

  def truncate_string(str, length)
    return str.present? ? truncate(str, length: length, omission: '...') : '&nbsp;'
  end
end
