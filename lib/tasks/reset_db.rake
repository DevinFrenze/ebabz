task :reset_db do
  sh "rails db:drop"
  sh "rails db:create"
  sh "rails db:migrate"
  sh "rails db:seed"
end
