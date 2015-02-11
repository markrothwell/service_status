# service_status
Service status widget for dashing to check running or not of windows services


copy service_status to the widget folder and copy service_status.rb to the job folder.

edit the .rb file to monitor the services you want to watch

to add service_status to your dashboard copy the below to the dashboard.erb file

## <li data-row="1" data-col="1" data-sizex="1" data-sizey="1">
      <div data-id="service_status" data-view="ServiceStatus" data-title="Service Status"></div>
    </li>
