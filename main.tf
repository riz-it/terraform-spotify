resource "spotify_playlist" "LocalPlaylist" {
  name        = "Tulus"
  description = "Popular songs by Tulus"
  public      = false

  tracks = flatten([
    data.spotify_search_track.tulus.tracks[*].id,
  ])
}

data "spotify_search_track" "tulus" {
  artist = "Tulus"
  limit  = 10
}