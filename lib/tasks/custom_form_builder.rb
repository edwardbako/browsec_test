class CustomFormBuilder < ActionView::Helpers::FormBuilder

  def label(method, options = {}, text = nil, &block)
    str = "#{text ? text : object.class.human_attribute_name(method.to_s)} #{object.errors[method].join(', ')}"
    super(method, str, options.merge({class: 'control-label'}), &block)
  end

end