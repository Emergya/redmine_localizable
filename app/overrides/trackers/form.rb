Deface::Override.new :virtual_path  	=> 'trackers/_form',
                     :name          	=> 'show_true_tracker_name',
                     :original			=> 'fe73067287437d6d97229bd0175e0bae11fbfacf',                 
                     :replace 			=> "erb[loud]:contains('f.text_field :name, :required => true')",
                     :text				=> "<%= f.text_field :name, :required => true, :value => @tracker.name(true) %>"