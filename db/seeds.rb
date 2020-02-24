categories = [ "Micro-studio", "Hôtels", "Immobilier", "E-1", "R2000" ]
insect_links = [ "https://res.cloudinary.com/paulpphoto/image/upload/v1582470717/2017-08-01_01-35-50_C_plat_fnsept.jpg", "https://res.cloudinary.com/paulpphoto/image/upload/v1582470713/Ce%CC%81toine_IVa_jpeg1x1_jktftc.jpg", "https://res.cloudinary.com/paulpphoto/image/upload/v1582470713/Ce%CC%81toine_II_jpeg1x1_jzituk.jpg", "https://res.cloudinary.com/paulpphoto/image/upload/v1582470714/Carre%CC%81_rtnvkb.jpg", "https://res.cloudinary.com/paulpphoto/image/upload/v1582470713/Ce%CC%81toine_I_compresse%CC%81_1x1_iyijmc.jpg", "https://res.cloudinary.com/paulpphoto/image/upload/v1582470713/Ce%CC%81toine_V_jpeg1x1_brqugs.jpg", "https://res.cloudinary.com/paulpphoto/image/upload/v1582470712/Ce%CC%81toine_VII_jpeg1x1_jdr7bl.jpg", "https://res.cloudinary.com/paulpphoto/image/upload/v1582470712/Ce%CC%81toine_VI_jpeg1x1_u1uiir.jpg", "https://res.cloudinary.com/paulpphoto/image/upload/v1582470712/HOPLIA_V2_plat_yvqn6d.jpg", "https://res.cloudinary.com/paulpphoto/image/upload/v1582470712/Ce%CC%81toine_VIII_jpeg1x1_rt0kns.jpg", "https://res.cloudinary.com/paulpphoto/image/upload/v1582470709/Insecte_jaune_JPEG_yes2ov.jpg", "https://res.cloudinary.com/paulpphoto/image/upload/v1582470709/PROJET2-Masterise%CC%81_et_corrige%CC%81V3_TIFF2_copie_512_Mp_sortie_finale_t2mskw.jpg" ]
e_1_links = [ "https://res.cloudinary.com/paulpphoto/image/upload/v1582470711/E-01_-_01_fzot9f.jpg", "https://res.cloudinary.com/paulpphoto/image/upload/v1582470711/E-01_-_03_ttnvor.jpg", "https://res.cloudinary.com/paulpphoto/image/upload/v1582470711/E-01_-_04_he8uwb.jpg", "https://res.cloudinary.com/paulpphoto/image/upload/v1582470710/E-01_-_05_ijawte.jpg", "https://res.cloudinary.com/paulpphoto/image/upload/v1582470710/E-01_-_02_m4sh7v.jpg", "https://res.cloudinary.com/paulpphoto/image/upload/v1582470709/E-01_-_06_ft56f1.jpg", "https://res.cloudinary.com/paulpphoto/image/upload/v1582470708/E-01_-_07_zy3lfu.jpg" ]
r2000_links = [ "https://res.cloudinary.com/paulpphoto/image/upload/v1582470707/Se%CC%81rie_Archi1A_-_01_copie_pqy8fd.jpg", "https://res.cloudinary.com/paulpphoto/image/upload/v1582470707/Se%CC%81rie_Archi1A_-_08_copie_lwpn2a.jpg", "https://res.cloudinary.com/paulpphoto/image/upload/v1582470707/Se%CC%81rie_Archi1A_-_09_copie_bty1nj.jpg", "https://res.cloudinary.com/paulpphoto/image/upload/v1582470706/Se%CC%81rie_Archi1A_-_04_copie_owo8ir.jpg", "https://res.cloudinary.com/paulpphoto/image/upload/v1582470706/Se%CC%81rie_Archi1A_-_07_uhjvoz.jpg", "https://res.cloudinary.com/paulpphoto/image/upload/v1582470706/Se%CC%81rie_Archi1A_-_06_copie_a3qidb.jpg", "https://res.cloudinary.com/paulpphoto/image/upload/v1582470706/Se%CC%81rie_Archi1A_-_03_copie_dtmmjk.jpg" ]
p insect_links.length
p e_1_links.length
p r2000_links.length

puts "\nSTART SEEDING"
puts "\nDestorying User and photos"
Photo.destroy_all
User.destroy_all
puts "\nDestroying done"

puts "\nCreating user"
user = User.new(email: "paulportierphoto@gmail.com", encrypted_password: "azerty").save
puts "\nCreating user done"

puts "\nCreating photos"

nb_de_tours = 1
tour = 1

nb_de_tours.times do
  puts "\nTour n°#{tour} sur #{nb_de_tours}\n"

  puts "\nInsects creation (12)"

    photo_insect_1 = Photo.new(name: "Insecte1", description: "Insecte1 super stylé", category: "Micro-studio")
    photo_for_photo1 = URI.open("https://res.cloudinary.com/paulpphoto/image/upload/v1582470717/2017-08-01_01-35-50_C_plat_fnsept.jpg")
    photo_insect_1.photo.attach(io: photo_for_photo1, filename: "Insecte1", content_type: 'image/jpg')
    photo_insect_1.save!
    puts "\nPhoto n°1 saved."

    photo_insect_2 = Photo.new(name: "Insecte2", description: "Insecte2 super stylé", category: "Micro-studio")
    photo_for_photo2 = URI.open(insect_links[1])
    photo_insect_2.photo.attach(io: photo_for_photo2, filename: "Insecte2", content_type: 'image/jpg')
    photo_insect_2.save!
    puts "\nPhoto n°2 saved."

    photo_insect_3 = Photo.new(name: "Insecte3", description: "Insecte3 super stylé", category: "Micro-studio")
    photo_for_photo3 = URI.open(insect_links[2])
    photo_insect_3.photo.attach(io: photo_for_photo3, filename: "Insecte3", content_type: 'image/jpg')
    photo_insect_3.save!
    puts "\nPhoto n°3 saved."

    photo_insect_4 = Photo.new(name: "Insecte4", description: "Insecte4 super stylé", category: "Micro-studio")
    photo_for_photo4 = URI.open(insect_links[3])
    photo_insect_4.photo.attach(io: photo_for_photo4, filename: "Insecte4", content_type: 'image/jpg')
    photo_insect_4.save!
    puts "\nPhoto n°4 saved."

    photo_insect_5 = Photo.new(name: "Insecte5", description: "Insecte5 super stylé", category: "Micro-studio")
    photo_for_photo5 = URI.open(insect_links[4])
    photo_insect_5.photo.attach(io: photo_for_photo5, filename: "Insecte5", content_type: 'image/jpg')
    photo_insect_5.save!
    puts "\nPhoto n°5 saved."

    photo_insect_6 = Photo.new(name: "Insecte6", description: "Insecte6 super stylé", category: "Micro-studio")
    photo_for_photo6 = URI.open(insect_links[5])
    photo_insect_6.photo.attach(io: photo_for_photo6, filename: "Insecte6", content_type: 'image/jpg')
    photo_insect_6.save!
    puts "\nPhoto n°6 saved."

    photo_insect_7 = Photo.new(name: "Insecte7", description: "Insecte7 super stylé", category: "Micro-studio")
    photo_for_photo7 = URI.open(insect_links[6])
    photo_insect_7.photo.attach(io: photo_for_photo7, filename: "Insecte7", content_type: 'image/jpg')
    photo_insect_7.save!
    puts "\nPhoto n°7 saved."

    photo_insect_8 = Photo.new(name: "Insecte8", description: "Insecte8 super stylé", category: "Micro-studio")
    photo_for_photo8 = URI.open(insect_links[7])
    photo_insect_8.photo.attach(io: photo_for_photo8, filename: "Insecte8", content_type: 'image/jpg')
    photo_insect_8.save!
    puts "\nPhoto n°8 saved."

    photo_insect_9 = Photo.new(name: "Insecte9", description: "Insecte9 super stylé", category: "Micro-studio")
    photo_for_photo9 = URI.open(insect_links[8])
    photo_insect_9.photo.attach(io: photo_for_photo9, filename: "Insecte9", content_type: 'image/jpg')
    photo_insect_9.save!
    puts "\nPhoto n°9 saved."

    photo_insect_10 = Photo.new(name: "Insecte10", description: "Insecte10 super stylé", category: "Micro-studio")
    photo_for_photo10 = URI.open(insect_links[9])
    photo_insect_10.photo.attach(io: photo_for_photo10, filename: "Insecte10", content_type: 'image/jpg')
    photo_insect_10.save!
    puts "\nPhoto n°10 saved."

    photo_insect_11 = Photo.new(name: "Insecte11", description: "Insecte11 super stylé", category: "Micro-studio")
    photo_for_photo11 = URI.open(insect_links[10])
    photo_insect_11.photo.attach(io: photo_for_photo11, filename: "Insecte11", content_type: 'image/jpg')
    photo_insect_11.save!
    puts "\nPhoto n°11 saved."

    photo_insect_12 = Photo.new(name: "Insecte12", description: "Insecte12 super stylé", category: "Micro-studio")
    photo_for_photo12 = URI.open(insect_links[11])
    photo_insect_12.photo.attach(io: photo_for_photo12, filename: "Insecte12", content_type: 'image/jpg')
    photo_insect_12.save!
    puts "\nPhoto n°12 saved."

  puts "\nInsects creation done"

  puts "\nE_1 creation (7)"

    photo_e1_1 = Photo.new(name: "E-1 - 1", description: "E-1 - 1 super stylé", category: "E-1")
    photo_for_photo1 = URI.open(e_1_links[0])
    photo_e1_1.photo.attach(io: photo_for_photo1, filename: "E-1 - 1", content_type: 'image/jpg')
    photo_e1_1.save!
    puts "\nPhoto n°1 saved."

    photo_e1_2 = Photo.new(name: "E-1 - 2", description: "E-1 - 2 super stylé", category: "E-1")
    photo_for_photo2 = URI.open(e_1_links[1])
    photo_e1_2.photo.attach(io: photo_for_photo2, filename: "E-1 - 2", content_type: 'image/jpg')
    photo_e1_2.save!
    puts "\nPhoto n°2 saved."

  puts "\nE-1 creation done"

  tour += 1
end

puts "\nCreating photos done"

puts "\nSEEDING DONE"
