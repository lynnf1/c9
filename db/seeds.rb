User.create!(
  email: "admin@test.com",
  password: "123456",
  password_confirmation: "123456",
  name: "Administrator",
  roles: "site_admin"
  )
  
puts "1 Admin created"

User.create!(
  email: "guest@test.com",
  password: "123456",
  password_confirmation: "123456",
  name: "Guest User"
  )
  
puts "1 Guest created"  



1.times do |topic|
  Topic.create!(
    title: "Ruby on Rails"
  )
  Topic.create!(
    title: "Angular"
  )
  Topic.create!(
    title: "Javascript"
  )
end
puts "3 Topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, 
    eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia
    voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque
    porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora
    incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam 
    corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate 
    velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
  topic_id: Topic.last.id
)
end
puts "10 blog items created"

1.times do |skill|
  Skill.create!(
  title: "Technical Support",
  percent_utilized: 100
  )
  Skill.create!(
  title: "Customer Service",
  percent_utilized: 93
  )
  Skill.create!(
  title: "Web Development in Ruby on Rails",
  percent_utilized: 80
  )
  Skill.create!(
  title: "Web Development in Javascript",
  percent_utilized: 70
  )
  Skill.create!(
  title: "Graphic Design",
  percent_utilized: 60
  )
  end
  
puts "10 skill items created"
  
8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: This is the title " ,
    subtitle: "Ruby on Rails" ,
    body: "entore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia
    voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque
    porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora
    incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam 
    corporis suscipit laboriosam, nisi ut aliquid ex ea commodi" ,
    main_image: "http://placehold.it/600x400", 
    thumb_image: "http://placehold.it/350x200",
    )
  end
  
  
1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: This is the title " ,
    subtitle: "Angular" ,
    body: "entore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia
    voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque
    porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora
    incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam 
    corporis suscipit laboriosam, nisi ut aliquid ex ea commodi" ,
    main_image: "http://placehold.it/600x400", 
    thumb_image: "http://placehold.it/350x200",
    )
  end
puts "9 skill items created"

3.times do |technology|
  Technology.create!(
    name: "Technology #{technology}",
    portfolio_id: Portfolio.last.id
 )
end

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}"
  )
end

puts "3 technologies created one way, 3 more made another way"