# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

design_list = [

[1,1,1,"http://nualgiponds.com/wp-content/uploads/2014/04/nualgi-koi-pond.jpg "],
[1,1,2,"http://i35.photobucket.com/albums/d182/DMFarms/100_0584.jpg "],
[1,2,1,"http://www.princelandscape.com/images/slideshow/koi_pond_01_b.jpg"],
[1,2,2,"http://www.slcgov.com/sites/default/files/images/parks/2012/IMG_3004.jpg "],
[1,3,1,"http://thumbs.dreamstime.com/z/koi-pond-3301307.jpg "],
[1,3,2,"http://media-cdn.tripadvisor.com/media/photo-s/01/12/eb/95/duck-pond.jpg"],
[2,1,1,"http://cf.ltkcdn.net/garden/images/std/167020-400x300-KoiPond.jpg "],
[2,1,2,"http://www.slcgov.com/sites/default/files/images/parks/2012/IMG_3005.jpg "],
[2,2,1,"https://aquaeden.com/pond-pictures/Waterfalls/slides/backyard-koi-pond.jpg "],
[2,2,2,"https://s-media-cache-ak0.pinimg.com/236x/75/4c/81/754c811de8374323c9d60b903b4b44ec.jpg "],
[2,3,1,"http://fullserviceaquatics.com/wp-content/uploads/2012/02/DSC_0462.jpg "],
[2,3,2,"https://slm-assets1.secondlife.com/assets/3039500/lightbox/duck%20pond_001.jpg?1297950785 "],
[3,1,1,"http://www.mitchkoi.co.uk/koikeepingtips/wp-content/uploads/2014/08/japan-koi-pond.jpg "],
[3,1,2,"https://s-media-cache-ak0.pinimg.com/236x/c7/c1/13/c7c113ea5c4e6d3e7cfc4faa156bdc8f.jpg "],
[3,2,1,"http://www.princelandscape.com/images/slideshow/koi_pond_04_b.jpg  "],
[3,2,2,"https://s-media-cache-ak0.pinimg.com/236x/95/a4/a6/95a4a6ae7547a7b64c8aa25114d4233e.jpg "],
[3,3,1,"http://thumbs.dreamstime.com/z/koi-pond-3301307.jpg "],
[3,3,2,"http://tours.tourfactory.com/tours/media/scene/big2/00/26/36/70/26367074.jpg "]

]

design_list.each do |area, cost, pond, url |
  Design.where(area: area, cost: cost, pond: pond).first_or_create( area: area, cost: cost, pond: pond, url: url )
end
