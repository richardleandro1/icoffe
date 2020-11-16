//
//  FirebaseReference.swift
//  iCoffe
//
//  Created by Richard Leandro on 15/11/20.
//

import Foundation
import FirebaseFirestore

enum FCollectionReference: String{
    case User
    case Menu
    case Order
    case Basket
}

func FirebaseReference(_ collectionReference: FCollectionReference) -> CollectionReference{
    return Firestore.firestore().collection(collectionReference.rawValue)
}
