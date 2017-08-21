Deface::Override.new :virtual_path  	=> 'custom_fields/_form',
                     :name          	=> 'show_true_custom_field_name',
                     :original			=> '3ac91c01a497a6b6d08ff5e5d0c42f0feaee6801',                 
                     :replace 			=> "erb[loud]:contains('f.text_field :name, :size => 50, :required => true')",
                     :text				=> "<%= f.text_field :name, :size => 50, :required => true, :value => @custom_field.present? ? @custom_field.name(true) : '' %>"