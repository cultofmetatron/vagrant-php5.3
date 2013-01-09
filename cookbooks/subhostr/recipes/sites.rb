require_recipe "apt"
require_recipe "apache2"

#for every subdirectory under sites, we must create a host.foo


  web_app "sites" do
    
    template "sites.conf.erb" do 
      variables({
     
      })
    end
    
    notifies :reload, resources(:service => "apache2"), :delayed
  end