require 'win32/service' 
 include Win32 
 
 # below is the services and host that the service is running on edit the below to check on the service you want to monitor
 # name is the title you want to see on the lis
 # svc is the name of the service
 # host is the ip of the address the service is running on

monitors = 
	   [{name: 'service display name', svc: 'service name', host: '192.168.2.1'},
		{name: 'service display name', svc: 'service name', host: '192.168.2.1'},
		{name: 'service display name', svc: 'service name', host: '192.168.2.1'},
		{name: 'service display name', svc: 'service name', host: '192.168.2.1'},
		{name: 'service display name', svc: 'service name', host: '192.168.2.1'},
		{name: 'service display name', svc: 'service name', host: '192.168.2.1'},
		{name: 'service display name', svc: 'service name', host: '192.168.2.1'}]



SCHEDULER.every '5s', :first_in => 0 do |job|
statuses = Array.new



 monitors.each do |monitor|
status = Service.status(monitor[:svc], monitor[:host]).current_state

if status == "running" 
	result = 1
	else
	result = 0
end

if result == 1
			arrow = "icon-ok-sign"
			color = "green"
		else
			arrow = "icon-warning-sign"
			color = "red"
		end
statuses.push({label: monitor[:name], value: result, arrow: arrow, color: color})
end
# print statuses to dashboard
	send_event('service_status', {items: statuses})
end