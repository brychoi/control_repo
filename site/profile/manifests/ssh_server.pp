class profile::ssh_server {
  package {'openssh-server':
      ensure => present,
      }
  service { 'sshd':
      ensure => 'running',
      enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
      ensure  => present,
      user    => 'root',
      type    => 'ssh-rsa',
      key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCxHdMbLnBFxR8+OsSPc+tgKCf8wU7kjeN5qXO78ZUgG+KX+oKSx+w0xtLBLn8P2kZza44Aa8X8r9n2CEw4/LwGXkw+hEz3567LLWwy4B7kL6mBsxYFMzQKb0fbqFRIVrmqeXOSbVzXVZJ+354uh7lPyyAYv/m8H5996Yl3YkT1g8rpDgDo3Sv53Z+y3fW05w1h77NRE8f6d6mf3p46qrTnh0aLm2b2wn6HK4i5mdTjBvYYnopkeqFg+ZYYvdNkFE6YKty1YqLgHnHHnqVnO1uu3/AinWPpVhKpqEcx/clHLlcRwiTZR7CkmrKO1wPu5LEawNxKyqvgQ4HZ59gXPDgv root@master.puppet.vm',
  }
}
