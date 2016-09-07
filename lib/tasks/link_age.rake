task :link_age => :environment do
  @links = Link.all
  @links.each do |link|
    link.age
    link.save
  end
end
