=begin
cord objs -
jukebox
CD
song
artist
playlist
display(details on screen)

actions -
create_playlist(add, delete, shuffle)
CD select
song selection
queuing up song
get next song from playlist

user introduced.... adding, dleeting, credit info
=end

class Jukebox
  def initialize()
    @song_queue = []
    @current_song = nil
  end

  def play

  end



  def select_song(title)
    if songs.include?(title)
      "Now playing: #{title}"
    else
      "Could not find song: #{title}"
    end
  end
end


class Song
  def initialize(artist, title)
    @artist = artist
    @title = title
  end
end

class JukeboxSongs
