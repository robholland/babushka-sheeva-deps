dep 'gmail_backup' do
  requires 'offlineimap installed'
  met? { babushka_config? "~/.offlineimaprc" }
  meet { render_erb "offlineimaprc.erb", :to => "~/.offlineimaprc" }
end
