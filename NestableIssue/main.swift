//
//  main.swift
//  NestableIssue
//
//  Created by Nikita Leonov on 7/26/15.
//  Copyright (c) 2015 Nikita Leonov. All rights reserved.
//

import Foundation

func callbackable (callback: (() -> Void) -> Void) {
    callback() {}
}

func nestable (nested: () -> Void) -> String {
    return "value"
}


callbackable { callback in
    //let callback = callback //Uncomment this line
    nestable {
        callback()
    }
    //return //or this line to workaround an issue
}