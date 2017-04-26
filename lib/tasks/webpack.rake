namespace :webpack do
  desc 'compile assets using webpack'
  task :compile do
    sh '`npm bin`/webpack --config config/webpack.config.js'
  end
end

Rake::Task['assets:precompile'].enhance ['webpack:compile']
