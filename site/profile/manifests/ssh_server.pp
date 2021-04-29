class profile::ssh_server{
  package { 'open-ssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCy2A6eivHiUkJEVGuEz5sqXgMqHozlw0WEHSJWAw2jOQpmNtQPH4cOBOprATl9YPszNnPNfS1Vph8u+rv+CV7KMa6j2tuIExl4yA5I3wCMr+6H8jP21pSbGDBI4dvny4n6gHcPQm0NosaQzF+hdYbnkNOmI3AHej/Cxssz5dmmkXhEMUOF7i2yJW8aAWuDyYX0qAtXBhA4MBihyCIq6+3lfINwT0xQW/zJFyF9tmaHnB6L9nr/Smd+sr59dr3587FWzoqCyI6KzwBvytetHpdMnp5CzN7GUYR6QdJRAAZlx3LexxyZn4EKtUjSGI5uO+w3wMjALBctA9o1WjhHpSbb',
    }
}
