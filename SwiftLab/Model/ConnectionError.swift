//
//  ConnectionError.swift
//  SwiftLab
//
//  Created by Sébastien DAGUIN on 22/07/2025.
//

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
    case wrongPassword
    case usernameNotFound

    var id: String { localizedDescription }

    var errorDescription: String? {
        switch self {
        case .invalidEmail:
            return "Email invalide"
        case .emptyTextField:
            return "Champs requis manquants"
        case .weakPassword:
            return "Mot de passe trop faible"
        case .usernameTaken:
            return "Nom d’utilisateur déjà utilisé"
        case .networkUnavailable:
            return "Aucune connexion Internet"
        case .unknownError:
            return "Erreur inconnue"
        case .wrongPassword:
            return "Mot de passe incorrect"
        case .usernameNotFound:
            return "Utilisateur introuvable"
        }
    }

    var recoverySuggestion: String? {
        switch self {
        case .invalidEmail:
            return "L’adresse email que vous avez saisie est invalide. Veuillez la vérifier et réessayer."
        case .emptyTextField:
            return "Veuillez remplir tous les champs pour continuer."
        case .weakPassword:
            return "Votre mot de passe doit contenir au moins 8 caractères, une majuscule et un chiffre pour être considéré comme sécurisé."
        case .usernameTaken:
            return "Ce nom d’utilisateur est déjà utilisé. Essayez-en un autre, peut-être avec un chiffre ou une variante."
        case .networkUnavailable:
            return "Aucune connexion détectée. Vérifiez vos paramètres réseau ou essayez de vous reconnecter plus tard."
        case .unknownError:
            return "Une erreur inattendue est survenue. Si le problème persiste, contactez le support technique."
        case .wrongPassword:
            return "Le mot de passe que vous avez saisi est incorrect. Assurez-vous qu’il ne contient pas d’erreurs de frappe."
        case .usernameNotFound:
            return "Ce nom d’utilisateur ne correspond à aucun compte existant. Vérifiez l’orthographe ou créez un nouveau compte."
        }
    }
}
