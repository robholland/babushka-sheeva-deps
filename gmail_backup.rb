dep 'gmail_backup' do
  requires 'offlineimap'
  met? { babushka_config? "~/.gmail_backup_offlineimaprc" }
  meet { render_erb "offlineimaprc.erb", :to => "~/.gmail_backup_offlineimaprc" }
end
