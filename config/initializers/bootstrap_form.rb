# config/initializers/bootstrap_form.rb
BootstrapForm.configure do |c|
  c.default_form_attributes = {} # to make forms W3C compliant

  module BootstrapForm
  class FormBuilder
    def default_label_col
      'col-sm-4'
    end
    def default_control_col
      'col-sm-8'
    end
    def default_layout
      # :default, :horizontal or :inline
      :horizontal
    end
  end
end

end
