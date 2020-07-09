mock_server_src = sync('mock_server/src/', '/home/node/app/mock_server/src/')
mock_server_package = sync('mock_server/package.json', '/home/node/app/mock_server/package.json')

docker_build(
  'mock-server',
  '.',
  dockerfile='mock_server/.docker/simple-mocks-tilt.Dockerfile',
  live_update=[mock_server_src,mock_server_package]
)

custom_build(
  'business-ngall',
  'docker build -f .ci/business/ngall.Dockerfile -t $EXPECTED_REF .',
  ['.'],
  live_update=[sync('business/ng1-src/build', '/usr/share/caddy/')]
)

k8s_yaml('k8s.yaml')