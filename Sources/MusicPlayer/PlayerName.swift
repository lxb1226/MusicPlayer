//
//  PlayerName.swift
//
//  This file is part of LyricsX - https://github.com/ddddxxx/LyricsX
//  Copyright (C) 2017  Xander Deng. Licensed under GPLv3.
//

public enum MusicPlayerName: String {
    
    #if os(macOS)
    
    case appleMusic = "Music"
    case spotify    = "Spotify"
    case vox        = "Vox"
    case audirvana  = "Audirvana"
    case swinsian   = "Swinsian"
    
    #elseif os(iOS)
    
    case appleMusic = "Music"
    case spotify    = "Spotify"
    
    #endif
}

#if os(macOS)

import LXMusicPlayer

extension MusicPlayerName {
    
    init?(lxName: LXScriptingMusicPlayer.Name) {
        switch lxName {
        case .appleMusic: self = .appleMusic
        case .spotify: self = .spotify
        case .vox: self = .vox
        case .audirvana: self = .audirvana
        case .swinsian: self = .swinsian
        default: return nil
        }
    }
    
    var lxName: LXScriptingMusicPlayer.Name? {
        switch self {
        case .appleMusic: return .appleMusic
        case .spotify: return .spotify
        case .vox: return .vox
        case .audirvana: return .audirvana
        case .swinsian: return .swinsian
        }
    }
    
    static var scriptingPlayerNames: [MusicPlayerName] = [.appleMusic, .spotify, .vox, .audirvana, .swinsian]
}

#endif
