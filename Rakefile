task default: %w[build]

task :build do
  sh "docker build --output=. --target=export-stage ."
end

task :clean do
  sh "rm -f hello-buildkite-*.deb"
end
