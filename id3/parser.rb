#!/usr/bin/ruby

def file_tail (file, offset)
  f = File.new(file)
  f.seek(-offset, IO::SEEK_END)
  f.read
end

class ID3Tag

  attr_reader :title, :artist, :album, :year, :comment, :genre, :track

  GENRES = %w(Blues Classic Rock Country Dance Disco Funk Grunge Hip-Hop Jazz Metal New Age Oldies Other Pop R&B Rap Reggae Rock Techno Industrial Alternative Ska Death Metal Pranks Soundtrack Euro-Techno Ambient Trip-Hop Vocal Jazz+Funk Fusion Trance Classical Instrumental Acid House Game Sound Clip Gospel Noise Alternative Rock Bass Punk Space Meditative Instrumental Pop Instrumental Rock Ethnic Gothic Darkwave Techno-Industrial Electronic Pop-Folk Eurodance Dream Southern Rock Comedy Cult Gangsta Top 40 Christian Rap Pop/Funk Jungle Native US Cabaret New Wave Psychadelic Rave Showtunes Trailer Lo-Fi Tribal Acid Punk Acid Jazz Polka Retro Musical Rock & Roll Hard Rock Folk Folk-Rock National Folk Swing Fast Fusion Bebob Latin Revival Celtic Bluegrass Avantgarde Gothic Rock Progressive Rock Psychedelic Rock Symphonic Rock Slow Rock Big Band Chorus Easy Listening Acoustic Humour Speech Chanson Opera Chamber Music Sonata Symphony Booty Bass Primus Porn Groove Satire Slow Jam Club Tango Samba Folklore Ballad Power Ballad Rhytmic Soul Freestyle Duet Punk Rock Drum Solo Acapella Euro-House Dance Hall Goa Drum & Bass Club-House Hardcore Terror Indie BritPop Negerpunk Polsk Punk Beat Christian Gangsta Heavy Metal Black Metal Crossover Contemporary C Christian Rock Merengue Salsa Thrash Metal Anime JPop SynthPop) 

  def initialize fname
    tag, @title, @artist, @album, @year, @comment, @genre = file_tail(fname, 128).unpack "A3A30A30A30A4A30C"
  end

  def genre_string
    GENRES[genre] || "Unknown"
  end

end

ARGV.each do |a|
  song = ID3Tag.new a
  puts "title:\t\t#{song.title}
artist:\t\t#{song.artist}
album:\t\t#{song.album}
year:\t\t#{song.year}
comment:\t#{song.comment}
genre:\t\t#{song.genre_string}" 
  puts "========================================================="
end
