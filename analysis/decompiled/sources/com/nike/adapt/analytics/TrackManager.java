package com.nike.adapt.analytics;

import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.nike.adapt.ui.settings.AppIconsActivity;
import o9.a;
import p4.h;
import s9.r;

/* JADX INFO: compiled from: TrackManager.kt */
/* JADX INFO: loaded from: classes.dex */
public final class TrackManager {
    public static final TrackManager INSTANCE = new TrackManager();

    /* JADX INFO: compiled from: TrackManager.kt */
    public enum AutoLaceType {
        CUSTOM("custom autolace"),
        DEFAULT("default autolace");

        private final String value;

        AutoLaceType(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    /* JADX INFO: compiled from: TrackManager.kt */
    public enum Screen {
        LOGIN("Login"),
        WELCOME("Welcome"),
        PUT_ON_YOUR_SHOES("Put On Your Shoe"),
        FIT("Fit"),
        ORTHOTICS("Orthotics"),
        PAIRING("Pairing"),
        ANIMATEDSPLASH("Animated Splash"),
        HOME("Home"),
        SETTINGS("Settings");

        private final String value;

        Screen(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    private TrackManager() {
    }

    public static /* synthetic */ void gestureActionsSheetOne$default(TrackManager trackManager, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "Heel Tap Unlace";
        }
        trackManager.gestureActionsSheetOne(str);
    }

    public static /* synthetic */ void gestureActionsSheetOneStart$default(TrackManager trackManager, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "Heel Tap Unlace";
        }
        trackManager.gestureActionsSheetOneStart(str);
    }

    public static /* synthetic */ void gestureActionsSheetTwo$default(TrackManager trackManager, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "Heel Tap Unlace";
        }
        trackManager.gestureActionsSheetTwo(str);
    }

    public static /* synthetic */ void gestureActionsSheetTwoStart$default(TrackManager trackManager, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "Heel Tap Unlace";
        }
        trackManager.gestureActionsSheetTwoStart(str);
    }

    public static /* synthetic */ void gestureEnabledToastSelected$default(TrackManager trackManager, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "Heel Tap Unlace";
        }
        trackManager.gestureEnabledToastSelected(str);
    }

    public static /* synthetic */ void gestureEnabledToastShown$default(TrackManager trackManager, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "Heel Tap Unlace";
        }
        trackManager.gestureEnabledToastShown(str);
    }

    public static /* synthetic */ void gestureFailureScreen$default(TrackManager trackManager, String str, int i10, String str2, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            str = "Heel Tap Unlace";
        }
        trackManager.gestureFailureScreen(str, i10, str2, i11);
    }

    public static /* synthetic */ void gestureFailureToastShown$default(TrackManager trackManager, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "Heel Tap Unlace";
        }
        trackManager.gestureFailureToastShown(str, str2);
    }

    public static /* synthetic */ void gestureFirstShoeSuccess$default(TrackManager trackManager, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "Heel Tap Unlace";
        }
        trackManager.gestureFirstShoeSuccess(str);
    }

    public static /* synthetic */ void gestureGenericFailure$default(TrackManager trackManager, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "Heel Tap Unlace";
        }
        trackManager.gestureGenericFailure(str);
    }

    public static /* synthetic */ void gestureIntroModal$default(TrackManager trackManager, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "Heel Tap Unlace";
        }
        trackManager.gestureIntroModal(str);
    }

    public static /* synthetic */ void gestureIntroModalDismiss$default(TrackManager trackManager, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "Heel Tap Unlace";
        }
        trackManager.gestureIntroModalDismiss(str);
    }

    public static /* synthetic */ void gestureIntroModalSelectsLearnMore$default(TrackManager trackManager, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "Heel Tap Unlace";
        }
        trackManager.gestureIntroModalSelectsLearnMore(str);
    }

    public static /* synthetic */ void gestureIntroModalSelectsTurnOn$default(TrackManager trackManager, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "Heel Tap Unlace";
        }
        trackManager.gestureIntroModalSelectsTurnOn(str);
    }

    public static /* synthetic */ void gestureLearnPrompt$default(TrackManager trackManager, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "Heel Tap Unlace";
        }
        trackManager.gestureLearnPrompt(str);
    }

    public static /* synthetic */ void gestureMoreTips$default(TrackManager trackManager, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "Heel Tap Unlace";
        }
        trackManager.gestureMoreTips(str, str2);
    }

    public static /* synthetic */ void gestureSecondShoeSuccess$default(TrackManager trackManager, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "Heel Tap Unlace";
        }
        trackManager.gestureSecondShoeSuccess(str);
    }

    public static /* synthetic */ void gestureSuccessToastShown$default(TrackManager trackManager, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "Heel Tap Unlace";
        }
        trackManager.gestureSuccessToastShown(str, str2);
    }

    public static /* synthetic */ void gestureTimeoutFailure$default(TrackManager trackManager, String str, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = "Heel Tap Unlace";
        }
        trackManager.gestureTimeoutFailure(str, i10);
    }

    public static /* synthetic */ void gestureTipContinueSelected$default(TrackManager trackManager, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "Heel Tap Unlace";
        }
        trackManager.gestureTipContinueSelected(str);
    }

    public static /* synthetic */ void gestureTipScreen$default(TrackManager trackManager, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "Heel Tap Unlace";
        }
        trackManager.gestureTipScreen(str);
    }

    public static /* synthetic */ void gestureToggleUpdated$default(TrackManager trackManager, boolean z10, String str, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str = "Heel Tap Unlace";
        }
        trackManager.gestureToggleUpdated(z10, str);
    }

    public static /* synthetic */ void gestureTutorialDoneSelected$default(TrackManager trackManager, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "Heel Tap Unlace";
        }
        trackManager.gestureTutorialDoneSelected(str);
    }

    public static /* synthetic */ void gestureTutorialExited$default(TrackManager trackManager, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "Heel Tap Unlace";
        }
        trackManager.gestureTutorialExited(str, str2);
    }

    public static /* synthetic */ void gestureTutorialFlowComplete$default(TrackManager trackManager, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "Heel Tap Unlace";
        }
        trackManager.gestureTutorialFlowComplete(str);
    }

    public static /* synthetic */ void gestureTutorialRepeatSecondShoe$default(TrackManager trackManager, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "Heel Tap Unlace";
        }
        trackManager.gestureTutorialRepeatSecondShoe(str);
    }

    public static /* synthetic */ void gestureTutorialSelectedFromGesturesScreen$default(TrackManager trackManager, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "Heel Tap Unlace";
        }
        trackManager.gestureTutorialSelectedFromGesturesScreen(str);
    }

    public static /* synthetic */ void gesturesCurrentState$default(TrackManager trackManager, boolean z10, String str, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str = "Heel Tap Unlace";
        }
        trackManager.gesturesCurrentState(z10, str);
    }

    public static /* synthetic */ void softwareUpdateNetworkFailure$default(TrackManager trackManager, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        trackManager.softwareUpdateNetworkFailure(str);
    }

    public final void allowNotificationsDialogPresented() {
    }

    public final void allowNotificationsDismissSelected() {
    }

    public final void allowNotificationsSettingsSelected() {
    }

    public final void appIconBottomSheetMaybeLater() {
    }

    public final void appIconBottomSheetPresented() {
    }

    public final void appIconBottomSheetSetSelected() {
    }

    public final void appIconScreenSelected() {
    }

    public final void appIconSelected(AppIconsActivity.a aVar) {
        h.j(aVar, "icon");
    }

    public final void autoLaceActionSheetPresented() {
    }

    public final void autoLaceActionSheetUserSelectsOkay() {
    }

    public final void autoLaceDisableErrorPresented() {
    }

    public final void autoLaceEditSelected() {
    }

    public final void autoLaceEnableErrorPresented() {
    }

    public final void autoLaceFitSelected(AutoLaceType autoLaceType, int i10, int i11) {
        h.j(autoLaceType, AnalyticsAttribute.TYPE_ATTRIBUTE);
    }

    public final void autoLaceFitSelectedToastShown() {
    }

    public final void autoLaceSaveFitSelected(int i10, int i11) {
    }

    public final void autoLaceScreenPresented(boolean z10) {
    }

    public final void autoLaceSetFpsErrorPresented() {
    }

    public final void autoLaceToggleUpdated(boolean z10) {
    }

    public final void autoLaceUnlacedToastShown() {
    }

    public final void batteryAccessed(int i10, int i11) {
    }

    public final void batteryNotificationCriticalBatteryLightsOnDismissed() {
    }

    public final void batteryNotificationCriticalBatteryLightsOnSent() {
    }

    public final void batteryNotificationCriticalBatteryLightsTurnOffTapped() {
    }

    public final void batteryNotificationCriticalBatterySent() {
    }

    public final void batteryNotificationCriticalBatteryTapped() {
    }

    public final void batteryNotificationFullyChargedSent() {
    }

    public final void batteryNotificationFullyChargedTapped() {
    }

    public final void batteryNotificationLowBatteryLightsOnDismissed() {
    }

    public final void batteryNotificationLowBatteryLightsOnSent() {
    }

    public final void batteryNotificationLowBatteryLightsTurnOffTapped() {
    }

    public final void batteryNotificationLowBatterySent() {
    }

    public final void batteryNotificationLowBatteryTapped() {
    }

    public final void batteryReminderNotificationToggleUpdated(boolean z10) {
    }

    public final void colorChangeDuringPulsing() {
    }

    public final void colorChangeLacingScreenDuringPulsing() {
    }

    public final void createPresetModesTray() {
    }

    public final void dataOptInCloseSelected() {
    }

    public final void dataOptInConfirmationModalCloseSelected() {
    }

    public final void dataOptInConfirmationPresented() {
    }

    public final void dataOptInDismissSelected() {
    }

    public final void dataOptInDontShareSelected() {
    }

    public final void dataOptInEnableDataSelected() {
    }

    public final void dataOptInModalPresented() {
    }

    public final void dataOptInPageViewed() {
    }

    public final void dataOptInSecondaryCloseSelected() {
    }

    public final void dataOptInSecondaryEnableDataSelected() {
    }

    public final void dataOptInSecondaryModalPresented() {
    }

    public final void dataOptInToggleSelected(boolean z10) {
    }

    public final void defaultLightingDuration(int i10) {
    }

    public final void effectsDoneButtonSelected() {
    }

    public final void farewellModalPresented() {
    }

    public final void fineTuneCompleted(int i10, int i11, String str) {
        h.j(str, "modeName");
    }

    public final void firmwareUpdateNotificationToastShown(String str) {
        h.j(str, "location");
    }

    public final void firstShoeConnectionAttempt() {
    }

    public final void gestureActionSheetBetaPresented(String str) {
        h.j(str, AnalyticsAttribute.TYPE_ATTRIBUTE);
    }

    public final void gestureActionsSheetOne(String str) {
        h.j(str, AnalyticsAttribute.TYPE_ATTRIBUTE);
    }

    public final void gestureActionsSheetOneStart(String str) {
        h.j(str, AnalyticsAttribute.TYPE_ATTRIBUTE);
    }

    public final void gestureActionsSheetTwo(String str) {
        h.j(str, AnalyticsAttribute.TYPE_ATTRIBUTE);
    }

    public final void gestureActionsSheetTwoStart(String str) {
        h.j(str, AnalyticsAttribute.TYPE_ATTRIBUTE);
    }

    public final void gestureEnabledToastSelected(String str) {
        h.j(str, AnalyticsAttribute.TYPE_ATTRIBUTE);
    }

    public final void gestureEnabledToastShown(String str) {
        h.j(str, AnalyticsAttribute.TYPE_ATTRIBUTE);
    }

    public final void gestureFailureScreen(String str, int i10, String str2, int i11) {
        h.j(str, AnalyticsAttribute.TYPE_ATTRIBUTE);
        h.j(str2, "failureReason");
    }

    public final void gestureFailureToastShown(String str, String str2) {
        h.j(str, AnalyticsAttribute.TYPE_ATTRIBUTE);
        h.j(str2, "screenFrom");
    }

    public final void gestureFirmwareUpdateNotificationDismissed() {
    }

    public final void gestureFirmwareUpdateNotificationPresented() {
    }

    public final void gestureFirmwareUpdateNotificationSelected() {
    }

    public final void gestureFirmwareUpdateToastSelected() {
    }

    public final void gestureFirmwareUpdateToastShown() {
    }

    public final void gestureFirstShoeSuccess(String str) {
        h.j(str, AnalyticsAttribute.TYPE_ATTRIBUTE);
    }

    public final void gestureGenericFailure(String str) {
        h.j(str, AnalyticsAttribute.TYPE_ATTRIBUTE);
    }

    public final void gestureIntroModal(String str) {
        h.j(str, AnalyticsAttribute.TYPE_ATTRIBUTE);
    }

    public final void gestureIntroModalDismiss(String str) {
        h.j(str, AnalyticsAttribute.TYPE_ATTRIBUTE);
    }

    public final void gestureIntroModalSelectsLearnMore(String str) {
        h.j(str, AnalyticsAttribute.TYPE_ATTRIBUTE);
    }

    public final void gestureIntroModalSelectsTurnOn(String str) {
        h.j(str, AnalyticsAttribute.TYPE_ATTRIBUTE);
    }

    public final void gestureLearnPrompt(String str) {
        h.j(str, AnalyticsAttribute.TYPE_ATTRIBUTE);
    }

    public final void gestureMoreTips(String str, String str2) {
        h.j(str, AnalyticsAttribute.TYPE_ATTRIBUTE);
        h.j(str2, "screenFrom");
    }

    public final void gestureSecondShoeSuccess(String str) {
        h.j(str, AnalyticsAttribute.TYPE_ATTRIBUTE);
    }

    public final void gestureSuccessToastShown(String str, String str2) {
        h.j(str, AnalyticsAttribute.TYPE_ATTRIBUTE);
        h.j(str2, "screenFrom");
    }

    public final void gestureTimeoutFailure(String str, int i10) {
        h.j(str, AnalyticsAttribute.TYPE_ATTRIBUTE);
    }

    public final void gestureTipContinueSelected(String str) {
        h.j(str, AnalyticsAttribute.TYPE_ATTRIBUTE);
    }

    public final void gestureTipScreen(String str) {
        h.j(str, AnalyticsAttribute.TYPE_ATTRIBUTE);
    }

    public final void gestureToggleUpdated(boolean z10, String str) {
        h.j(str, AnalyticsAttribute.TYPE_ATTRIBUTE);
    }

    public final void gestureTutorialDoneSelected(String str) {
        h.j(str, AnalyticsAttribute.TYPE_ATTRIBUTE);
    }

    public final void gestureTutorialExited(String str, String str2) {
        h.j(str, AnalyticsAttribute.TYPE_ATTRIBUTE);
        h.j(str2, "screenExitedFrom");
    }

    public final void gestureTutorialFlowComplete(String str) {
        h.j(str, AnalyticsAttribute.TYPE_ATTRIBUTE);
    }

    public final void gestureTutorialRepeatSecondShoe(String str) {
        h.j(str, AnalyticsAttribute.TYPE_ATTRIBUTE);
    }

    public final void gestureTutorialSelectedFromGesturesScreen(String str) {
        h.j(str, AnalyticsAttribute.TYPE_ATTRIBUTE);
    }

    public final void gestureUserSelectsGotItFromActionSheetBeta(String str) {
        h.j(str, AnalyticsAttribute.TYPE_ATTRIBUTE);
    }

    public final void gesturesCriticalBatteryErrorPresented() {
    }

    public final void gesturesCurrentState(boolean z10, String str) {
        h.j(str, AnalyticsAttribute.TYPE_ATTRIBUTE);
    }

    public final void gesturesErrorUserSelectsOk() {
    }

    public final void gesturesErrorUserSelectsSettings() {
    }

    public final void gesturesFailedToDisableErrorPresented() {
    }

    public final void gesturesFailedToEnableErrorPresented() {
    }

    public final void gesturesPreferencesSelectedFromMyShoes() {
    }

    public final void gesturesScreenPresented() {
    }

    public final void gesturesUserSelectsSubmitFeedback() {
    }

    public final void googleVoiceInfoPrompt() {
    }

    public final void googleVoiceLacingNotificationDismiss() {
    }

    public final void googleVoiceLacingNotificationPresented() {
    }

    public final void googleVoiceLacingNotificationTryNow() {
    }

    public final void googleVoiceTryNow() {
    }

    public final void googleVoiceViewAll() {
    }

    public final void init() {
    }

    public final void isAutoGeneratedModeSelected(String str) {
        h.j(str, "modeName");
    }

    public final void isCalibrateOrthoticsCompleted() {
    }

    public final void isCalibrateOrthoticsStarted() {
    }

    public final void isColorPaletteColorSelected(String str) {
        h.j(str, "colorName");
    }

    public final void isConnectionErrorGetHelpButtonSelected() {
    }

    public final void isConnectionErrorTryAgainButtonSelected() {
    }

    public final void isDisconnectedCalibrationErrorRestartButtonSelected() {
    }

    public final void isDisconnectedCalibrationErrorShown() {
    }

    public final void isDisconnectedCalibrationErrorSkipButtonSelected() {
    }

    public final void isHomeViewLoaded(a aVar) {
        h.j(aVar, "homeView");
    }

    public final void isLacingValueLeftChanged(int i10) {
    }

    public final void isLacingValueRightChanged(int i10) {
    }

    public final void isLockdownInitiated() {
    }

    public final void isLoginStarted() {
    }

    public final void isLogout() {
    }

    public final void isModeAccessed(int i10) {
    }

    public final void isModeAdded(int i10, int i11, int i12, String str) {
        h.j(str, "modeName");
    }

    public final void isModeDeleted(int i10, String[] strArr) {
        h.j(strArr, "modeNames");
    }

    public final void isModeSelected(int i10, int i11, String str) {
        h.j(str, "modeName");
    }

    public final void isOnboardingVideoCompleted() {
    }

    public final void isOnboardingVideoNext() {
    }

    public final void isOnboardingVideoPrevious() {
    }

    public final void isPairingComplete() {
    }

    public final void isPairingConnectionErrorShown() {
    }

    public final void isPairingLogout() {
    }

    public final void isPairingStarted() {
    }

    public final void isQuickUnlaceSelected() {
    }

    public final void isScreenViewed(Screen screen) {
        h.j(screen, "screen");
    }

    public final void isSettingsAccessed(String str) {
        h.j(str, "settingsCategory");
    }

    public final void isShoeAlreadyPairedGetHelpButtonSelected() {
    }

    public final void isShoeAlreadyPairedShown() {
    }

    public final void isShoeAlreadyPairedTryAgainButtonSelected() {
    }

    public final void isShopNowSelected() {
    }

    public final void isSoftwareUpdateAvailablePrompted() {
    }

    public final void isSoftwareUpdateErrorRestart() {
    }

    public final void isSoftwareUpdateErrorRestartAndRetry() {
    }

    public final void isSoftwareUpdateErrorThrown() {
    }

    public final void isSoftwareUpdateErrorThrownSecondTry() {
    }

    public final void isSoftwareUpdateErrorThrownSecondTryGetHelp() {
    }

    public final void isSoftwareUpdateErrorWhenAppBackgrounded() {
    }

    public final void isSoftwareUpdateSelectedFromPrompt() {
    }

    public final void isUserScaleCompleted(int i10, int i11, int i12, int i13, String str) {
        h.j(str, "modeName");
    }

    public final void isUserScaleStarted() {
    }

    public final void lightPackActivated(z8.a aVar) {
        h.j(aVar, "lightPackType");
    }

    public final void lightPackTurnedOff(z8.a aVar) {
        h.j(aVar, "lightPack");
    }

    public final void lightPacksActivatedActionSheetDismissButtonSelected() {
    }

    public final void lightPacksActivatedActionSheetOkButtonSelected() {
    }

    public final void lightPacksActivatedActionSheetPresented() {
    }

    public final void lightPacksCarouselPresented() {
    }

    public final void lightPacksTooltipAlternatePresented() {
    }

    public final void lightPacksTooltipOneNextSelected() {
    }

    public final void lightPacksTooltipOnePresented() {
    }

    public final void lightPacksTooltipTwoGotItSelected() {
    }

    public final void lightPacksTooltipTwoPresented() {
    }

    public final void lightPacksUpdateFirmwareActionSheetDismissButtonSelected() {
    }

    public final void lightPacksUpdateFirmwareActionSheetPresented() {
    }

    public final void lightPacksUpdateFirmwareActionSheetUpdateButtonSelected() {
    }

    public final void lightPacksUpdateFirmwareToastNotificationsSelected() {
    }

    public final void lightingDuoColorScreenViewed() {
    }

    public final void lightingEffectsBatteryLow() {
    }

    public final void lightingEffectsBatteryOverHeat() {
    }

    public final void lightingEffectsScreenViewed() {
    }

    public final void lightingFirmwareUpdateBottomSheetPresented() {
    }

    public final void lightingPaletteDurationAccessed(int i10) {
    }

    public final void lightingSingleColorScreenViewed() {
    }

    public final void lightingStateOffClicked() {
    }

    public final void lightingStateOnClicked() {
    }

    public final void lightingToolTipAlternateOnePresented() {
    }

    public final void lightingToolTipAlternateTwoPresented() {
    }

    public final void lightingToolTipGotItSelected() {
    }

    public final void lightingToolTipNextSelected() {
    }

    public final void lightingToolTipPresented() {
    }

    public final void lightingToolTipTwoPresented() {
    }

    public final void lightsEffectDurationSelected(String str) {
        h.j(str, "duration");
    }

    public final void lightsEffectSelected(String str) {
        h.j(str, "effect");
    }

    public final void manageGoogleVoice(r7.a aVar) {
        h.j(aVar, "deepLink");
    }

    public final void modeEnteredManually(String str, int i10, int i11) {
        h.j(str, "modeName");
    }

    public final void modeRenamed(String str) {
        h.j(str, "modeName");
    }

    public final void modesReordered() {
    }

    public final void multipairAddNewShoe() {
    }

    public final void multipairCalibrateFitCompleted() {
    }

    public final void multipairColorWayColorSelected(String str) {
    }

    public final void multipairColorWayScreenSelected() {
    }

    public final void multipairConnectedCancel() {
    }

    public final void multipairConnectedRemove() {
    }

    public final void multipairEditNicknameSelected() {
    }

    public final void multipairFindYourFitFlowFinished(int i10, int i11) {
    }

    public final void multipairFindYourFitFlowStarted() {
    }

    public final void multipairFirmwareVersionBackSelected() {
    }

    public final void multipairFirmwareVersionSelected() {
    }

    public final void multipairFitSelected() {
    }

    public final void multipairIconSelected(int i10) {
    }

    public final void multipairModalConnected() {
    }

    public final void multipairModelInformationBackSelected() {
    }

    public final void multipairModelInformationSelected() {
    }

    public final void multipairOnBackPressed() {
    }

    public final void multipairOnShoeCardSelected() {
    }

    public final void multipairPairingFlowFinished() {
    }

    public final void multipairPairingFlowStarted() {
    }

    public final void multipairRemoveShoeSelected() {
    }

    public final void multipairShoePreferenceBackSelected() {
    }

    public final void myLightsDoneButtonSelected() {
    }

    public final void onChargerErrorPresentedFindYourFit() {
    }

    public final void pairingConnectionErrorGetHelp() {
    }

    public final void pairingConnectionErrorPresented() {
    }

    public final void pairingConnectionErrorReconnect() {
    }

    public final void presetsCreated() {
    }

    public final void presetsUpdated() {
    }

    public final void pulsingLightsFirmwareNotificationPresented() {
    }

    public final void pulsingLightsTurnedOff() {
    }

    public final void pulsingLightsTurnedOn() {
    }

    public final void recommendedPresetCreated(int i10, int i11, String str) {
        h.j(str, "modeName");
    }

    public final void settingsDeleteAccountPageViewed() {
    }

    public final void settingsDeleteAccountSelected() {
    }

    public final void settingsDeleteAccountServiceErrorPresented() {
    }

    public final void settingsPartnersAppSelected(String str) {
        h.j(str, "packageName");
    }

    public final void settingsPartnersPageViewed() {
    }

    public final void settingsVoiceScreenViewed() {
    }

    public final void shoeRecognizedWhenPaired(r rVar) {
        h.j(rVar, "shoeType");
    }

    public final void shoeTypeSelected(r rVar) {
        h.j(rVar, "shoeType");
    }

    public final void showSplashScreen(String str) {
        h.j(str, AnalyticsAttribute.TYPE_ATTRIBUTE);
    }

    public final void softwareFlashSuccess() {
    }

    public final void softwareUpdateConnectionReEstablished(String str, String str2) {
        h.j(str, "firmwareVersionLeft");
        h.j(str2, "firmwareVersionRight");
    }

    public final void softwareUpdateErrorThrownSecondTryRestart() {
    }

    public final void softwareUpdateFailedReason(String str) {
        h.j(str, "reason");
    }

    public final void softwareUpdateNetworkFailure(String str) {
    }

    public final void softwareUpdateRestart() {
    }

    public final void softwareUpdateStarted(String str, String str2) {
        h.j(str, "firmwareVersionFrom");
        h.j(str2, "firmwareVersionTo");
    }

    public final void softwareUpdateSuccess() {
    }

    public final void softwareUpdateUserCancels() {
    }

    public final void updatePresetModesTray() {
    }
}
