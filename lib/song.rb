class Song
  @@count = 0 #keep track of the number of new songs that are created from the Song class
   @@genres = [] #class variable, let's call it @@genres, that is equal to an empty array
   @@artists = [] #@@artists, that is equal to an empty array.
   @@genre_count = {}
   @@artist_count = {}

   attr_accessor :name, :artist, :genre

   def initialize(name, artist, genre)
     @name = name
     @artist = artist
     @genre = genre

     @@count += 1 #Your #initialize method should use the @@count variable and increment the value of that variable by 1
     @@genres << genre #add the genre of the song being created to the @@genres array
     @@artists << artist # Your #initialize method should add artists to the @@artists array
   end

   def self.count #method, .count, that returns the total number of songs created.
     @@count
   end

   def self.genres #method, .genres that returns an array of all of the genres of existing songs. This array should contain only unique genres
     @@genres.uniq
   end

   def self.artists #method, .artists, that returns an array of all of the artists of the existing songs.
     @@artists.uniq
   end

   def self.genre_count #.genre_count, that returns a hash in which the keys are the names of each genre. Each genre name key should point to a value that is the number of songs that have that genre.
     @@genres.each{|genre|
       @@genre_count[genre] ? @@genre_count[genre] += 1 : @@genre_count[genre] = 1
     }
     @@genre_count
   end

   def self.artist_count
     @@artists.each{|artist|
       @@artist_count[artist] ? @@artist_count[artist] += 1 : @@artist_count[artist] = 1
     }
     @@artist_count
   end

end
