# netdata-on-balena-test

Test for running netdata on balena.

Deploy:

[![](https://www.balena.io/deploy.png)](https://dashboard.balena-cloud.com/deploy)

Open dashbaord:

- Install balena CLI
- Login
  ```
  balena login
  ```
- Tunnel port 19999
  ```
  balena tunnel [your device id here] -p 19999:19999
  ```
- Open netdata dashboard on localhost:19999

Issues:

- Flaky cgroup graphs. Sometimes available sometimes not.
- Balena hostname not used by netdata. Each time the container restarts, another generated id is shown on top of the netdata dashboard.
