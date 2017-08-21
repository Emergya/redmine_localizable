Deface::Override.new :virtual_path  	=> 'issue_statuses/_form',
                     :name          	=> 'show_true_issue_status_name',
                     :original			=> 'fe73067287437d6d97229bd0175e0bae11fbfacf',                 
                     :replace 			=> "erb[loud]:contains('f.text_field :name, :required => true')",
                     :text				=> "<%= f.text_field :name, :required => true, :value => @issue_status.name(true) %>"