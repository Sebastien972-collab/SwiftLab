//
//  ConnectionError.swift
//  SwiftLab
//
//  Created by Sébastien DAGUIN on 22/07/2025.
//

import Foundation


enum ConnectionError: LocalizedError, Identifiable {
    case invalidEmail
    case emptyTextField
    case weakPassword
    case usernameTaken
    case networkUnavailable
    case unknownError

    var id: String { localizedDescription }

    var errorDescription: String {
        switch self {
        case .invalidEmail:
            return "L’adresse email saisie est invalide. Veuillez vérifier et réessayer."
        case .emptyTextField:
            return "Tous les champs doivent être remplis pour continuer."
        case .weakPassword:
            return "Le mot de passe est trop faible. Il doit contenir au moins 8 caractères, une majuscule et un chiffre."
        case .usernameTaken:
            return "Ce nom d’utilisateur est déjà pris. Veuillez en choisir un autre."
        case .networkUnavailable:
            return "Connexion internet non disponible. Vérifiez votre réseau et réessayez."
        case .unknownError:
            return "Une erreur inattendue est survenue. Veuillez réessayer plus tard."
        }
    }
}
