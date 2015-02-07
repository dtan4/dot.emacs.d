DOT_EMACS_DIR = File.join(ENV["HOME"], ".emacs.d")

task default: %w(clean update_submodules test)

desc "Clean up installed packages"
task :clean do
  Dir.glob("elisp/*") do |dir|
    rm_r dir
  end
end

desc "Launch Emacs and test whether it exits successfully"
task :test do
  # http://d.hatena.ne.jp/rubikitch/20101125/emacs
  sh %q(emacs -batch --eval '(setq debug-on-error t)' -l ./init.el)
end

namespace :submodule do
  desc "Update submodules"
  task :update do
    Dir["site-lisp/*/"].map { |dir| File.join(DOT_EMACS_DIR, dir[0..-1]) }.each do |dir|
      Dir.chdir(dir)
      sh %(git pull origin master)
    end

    Dir.chdir(DOT_EMACS_DIR)
  end
end
