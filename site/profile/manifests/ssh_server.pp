class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC/T9BzjuQ1+/d7voI2F+rzmx2szbw7s24XmhAac3HA0RqIxwutQrSwPGyJN7te6W3BtDaocSLZ3BGT3ZgXnrL+lsq+V72/ro2fB4ta7zIFHcjByWnwaaYPuvYaw7/BNaPxBAetvnKqKZe96/de/SdToslysnv4In/27ZLit2+6HG/Zs2CVsB0zuOwihkA76bO8Y52rsKFYDQ5EIZOTUVehrKSD1p45NuE7lQnIExdv61BRK/4N2YmY6kBi+EjpiysTycXiALF6YqrIeUm6gDdiO0wxIg41PbyQxRt7QK2fsS/9hCxOV9BQalNmZDuN7QY47YIi6R2XAHlyIt/3jK9P',
  }  
}
