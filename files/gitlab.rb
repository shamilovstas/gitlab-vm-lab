external_url 'http://my-gitlab.com'
puma['worker_processes'] = 0

sidekiq['concurrency'] = 10

prometheus_monitoring['enable'] = false

gitlab_rails['env'] = {
  'MALLOC_CONF' => 'dirty_decay_ms:1000,muzzy_decay_ms:1000'
}