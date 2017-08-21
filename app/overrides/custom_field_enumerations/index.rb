Deface::Override.new :virtual_path  	=> 'custom_field_enumerations/index',
                     :name          	=> 'show_true_custom_field_enumeration_name',
                     :original			=> '240e154f4c0e2e92ad6e238cdb269560020007d5',                 
                     :replace 			=> "erb[loud]:contains('value.name')",
                     :text				=> '<%= text_field_tag("custom_field_enumerations[#{value.id}][name]", value.name(true), :size => 40) %>'