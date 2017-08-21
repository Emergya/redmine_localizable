Deface::Override.new :virtual_path  	=> 'enumerations/_form',
                     :name          	=> 'show_true_enumeration_name',
                     :original			=> '3052f3b674fb6d191f723fb47e4da5d85ec3f964',                 
                     :replace 			=> "erb[loud]:contains('f.text_field :name')",
                     :text				=> "<%= f.text_field :name, :value => @enumeration.name(true) %>"