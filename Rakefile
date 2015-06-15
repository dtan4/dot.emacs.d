DOT_EMACS_DIR = File.join(ENV["HOME"], ".emacs.d")

task default: %w(clean test)

desc "Clean up installed packages"
task :clean do
  Dir.glob("el-get/*") { |dir| rm_r dir }
end

desc "Launch Emacs and test whether it exits successfully"
task :test do
  # http://d.hatena.ne.jp/rubikitch/20101125/emacs
  sh %q(emacs -batch --eval '(setq debug-on-error t)' -l ./init.el)
end
