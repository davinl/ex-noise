namespace :git_test do
  desc "print status"
  task :status do 
    sh "git status"
  end
end