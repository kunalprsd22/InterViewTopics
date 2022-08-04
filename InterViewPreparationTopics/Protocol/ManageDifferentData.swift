//
/**
* Webkul Software.
* @package  ThreadUse
* @Category Webkul
* @author Webkul <support@webkul.com>
* FileName: ManageDifferentData.swift
* @Copyright (c) 2010-2019 Webkul Software Private Limited (https://webkul.com)
* @license https://store.webkul.com/license.html ASL Licence
* @link https://store.webkul.com/license.html

*/


import Foundation

enum Type{
    case Video
    case Audio
}

protocol ItemType{
    var type:Type {get}
    var rowCount:Int {get}
}


class VideoData:ItemType{
    var data:String?
    
    var type:Type{
        return .Video
    }
    
    var rowCount: Int{
        return 4
    }
    
    init() {
       data = "Video Data"
    }
}


class AudioData:ItemType{
    var data:String?
    
    var type:Type{
        return .Audio
    }
    
    var rowCount: Int{
        return 4
    }
    
    init() {
      data = "Audio Data"
    }
    
}


class ManageDifferentData {
    
    var arrayofDiffData = [ItemType]()
    let videoData = VideoData()
    let audioData = AudioData()
    
    
    
    init() {
        arrayofDiffData.append(videoData)
        arrayofDiffData.append(audioData)
    }
    
}
