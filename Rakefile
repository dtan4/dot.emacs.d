task default: %w(clean update_submodule test)

desc "Clean up installed packages"
task :clean do
  Dir.glob("elisp/*") do |dir|
    rm_r dir
  end
end

desc "Update submodule"
task :update_submodule do
  sh %q(git submodule update --recursive)
end

desc "Launch Emacs and test whether it exits successfully"
task :test do
  # http://d.hatena.ne.jp/rubikitch/20101125/emacs
  sh %q(emacs -batch --eval '(setq debug-on-error t)' -l ./init.el)
end
