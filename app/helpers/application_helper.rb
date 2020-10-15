module ApplicationHelper
  def main_menue_items
    ['Dashboard','Connections','Mentors','Mentees','Groups','Awards']
  end
  def sub_main_meue_items
    ['Courses','Events','Resources','Discussions']
  end
  def side_bar(items,options={})
    tag.ul class: 'side-bar__list' do
      items.map do |item|
        tag.li( link_to(image_tag("/assets/icons/sidebar_icons/sidebar-#{item.downcase}.svg",class: '')+ item,'#',class: 'side-bar__link') , {class: "side-bar__item"})
      end.reduce(&:+)
    end
  end
  def div_with_img(div_options={},image_options={})
    tag.div class: div_options[:class] do
      display_img(image_options)+div_options[:text].to_s.html_safe
    end
  end

  def link_with_img(link_options={},image_options={})
    link_text = display_img(image_options)+ link_options.fetch(:text,'').html_safe
    link_to(link_text.html_safe, link_options.fetch(:href,no_path), :class => link_options.fetch(:class,''))
  end

  def display_img(options={})
    image_tag  options[:src],alt: options[:alt],class: options[:class]
  end
  def no_path
    'javascript:void()'
  end
end
