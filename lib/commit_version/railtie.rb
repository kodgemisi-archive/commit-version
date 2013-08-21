module CommitVersion
  class Railtie < Rails::Railtie
  initializer "commit_version.get_git_commit", :after => :set_load_path do |app|
    
    f = IO.popen('git log --pretty=format:"%ad,%h,%d" | grep origin/HEAD')
    output = f.readlines.first
    if(output)
      app.config.commit_version = f.readlines.first.split(',').slice(0,2).join(' - ')
    else
      app.config.commit_version = '-'
    end

   end
  end
end