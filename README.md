Description
A Dashing widget that checks whether a service is responding. It displays either a check or alert depending on the response.



Usage
Add the widget HTML to your dashboard
    <li data-row="1" data-col="1" data-sizex="1" data-sizey="1">
      <div data-id="service_status" data-view="ServiceStatus" data-title="Service Status"></div>
    </li>
Create a directory titled "service_status" under your widgets directory and move service_status.coffee, service_status.html, and service_status.scss into that directory.

Modify the servers array of the service_status.rb file.

Move service_status.rb into your jobs folder.
