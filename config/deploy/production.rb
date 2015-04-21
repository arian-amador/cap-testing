role :app, %w{deployer@104.236.248.150}
role :web, %w{deployer@104.236.248.150}
role :db,  %w{deployer@104.236.248.150}

server '104.236.248.150',
  user: 'aamador',
  roles: %w{web app db},
  ssh_options: {
    keys: %w(/home/aamador/.ssh/digital-ocean),
    forward_agent: false,
    auth_methods: %w(publickey password)
  }
