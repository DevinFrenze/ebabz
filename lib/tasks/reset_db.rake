task :reset_db do
  sh "rails db:drop"
  sh "rails db:create"
  sh "rails db:migrate"
end
