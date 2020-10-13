module ApplicationHelper
  def main_menue_items
    ['Dashboard','Connections','Mentors','Mentees','Groups','Awards']
  end
  def sub_main_meue_items
    ['Courses','Events','Resources','Discussions']
  end
  def side_bar(items,options={})
    content_tag(:ul,class: 'side-bar__list') do
      items.map do |item|
        content_tag(:li, link_to(image_tag("/assets/icons/sidebar_icons/sidebar-#{item.downcase}.svg",class: '')+ item,'#',class: 'side-bar__link') , {class: "side-bar__item"})
      end.reduce(&:+)
    end
  end
end
