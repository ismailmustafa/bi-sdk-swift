import BeyondIdentityEmbedded
import os

/// Wrapper around `Embedded.initialize`. Initialize the SDK before using it. This must be called first. This can be called from your AppDelegate or SceneDelegate.
///   - Parameters:
///   - biometricAskPrompt: A prompt the user will see when asked for biometrics while extending a credential to another device.
///   - clientID: The public or confidential client ID generated during the OIDC configuration.
///   - logger: optional function to log output
public func initializeBeyondIdentity(
    biometricAskPrompt: String,
    clientID: String,
    redirectURI: String,
    logger: ((OSLogType, String) -> Void)? = nil
){
    Embedded.initialize(
        biometricAskPrompt: biometricAskPrompt,
        clientID: clientID,
        redirectURI: redirectURI,
        logger: logger
    )
}
