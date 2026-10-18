.class public final Lcom/nike/adapt/analytics/TrackManager;
.super Ljava/lang/Object;
.source "TrackManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/analytics/TrackManager$Screen;,
        Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/nike/adapt/analytics/TrackManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/analytics/TrackManager;

    invoke-direct {v0}, Lcom/nike/adapt/analytics/TrackManager;-><init>()V

    sput-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic gestureActionsSheetOne$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "Heel Tap Unlace"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nike/adapt/analytics/TrackManager;->gestureActionsSheetOne(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic gestureActionsSheetOneStart$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "Heel Tap Unlace"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nike/adapt/analytics/TrackManager;->gestureActionsSheetOneStart(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic gestureActionsSheetTwo$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "Heel Tap Unlace"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nike/adapt/analytics/TrackManager;->gestureActionsSheetTwo(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic gestureActionsSheetTwoStart$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "Heel Tap Unlace"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nike/adapt/analytics/TrackManager;->gestureActionsSheetTwoStart(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic gestureEnabledToastSelected$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "Heel Tap Unlace"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nike/adapt/analytics/TrackManager;->gestureEnabledToastSelected(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic gestureEnabledToastShown$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "Heel Tap Unlace"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nike/adapt/analytics/TrackManager;->gestureEnabledToastShown(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic gestureFailureScreen$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/String;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x1

    if-eqz p5, :cond_0

    const-string p1, "Heel Tap Unlace"

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nike/adapt/analytics/TrackManager;->gestureFailureScreen(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic gestureFailureToastShown$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p1, "Heel Tap Unlace"

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/analytics/TrackManager;->gestureFailureToastShown(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic gestureFirstShoeSuccess$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "Heel Tap Unlace"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nike/adapt/analytics/TrackManager;->gestureFirstShoeSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic gestureGenericFailure$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "Heel Tap Unlace"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nike/adapt/analytics/TrackManager;->gestureGenericFailure(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic gestureIntroModal$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "Heel Tap Unlace"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nike/adapt/analytics/TrackManager;->gestureIntroModal(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic gestureIntroModalDismiss$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "Heel Tap Unlace"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nike/adapt/analytics/TrackManager;->gestureIntroModalDismiss(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic gestureIntroModalSelectsLearnMore$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "Heel Tap Unlace"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nike/adapt/analytics/TrackManager;->gestureIntroModalSelectsLearnMore(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic gestureIntroModalSelectsTurnOn$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "Heel Tap Unlace"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nike/adapt/analytics/TrackManager;->gestureIntroModalSelectsTurnOn(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic gestureLearnPrompt$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "Heel Tap Unlace"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nike/adapt/analytics/TrackManager;->gestureLearnPrompt(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic gestureMoreTips$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p1, "Heel Tap Unlace"

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/analytics/TrackManager;->gestureMoreTips(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic gestureSecondShoeSuccess$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "Heel Tap Unlace"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nike/adapt/analytics/TrackManager;->gestureSecondShoeSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic gestureSuccessToastShown$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p1, "Heel Tap Unlace"

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/analytics/TrackManager;->gestureSuccessToastShown(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic gestureTimeoutFailure$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p1, "Heel Tap Unlace"

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/analytics/TrackManager;->gestureTimeoutFailure(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic gestureTipContinueSelected$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "Heel Tap Unlace"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nike/adapt/analytics/TrackManager;->gestureTipContinueSelected(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic gestureTipScreen$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "Heel Tap Unlace"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nike/adapt/analytics/TrackManager;->gestureTipScreen(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic gestureToggleUpdated$default(Lcom/nike/adapt/analytics/TrackManager;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, "Heel Tap Unlace"

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/analytics/TrackManager;->gestureToggleUpdated(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic gestureTutorialDoneSelected$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "Heel Tap Unlace"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nike/adapt/analytics/TrackManager;->gestureTutorialDoneSelected(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic gestureTutorialExited$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p1, "Heel Tap Unlace"

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/analytics/TrackManager;->gestureTutorialExited(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic gestureTutorialFlowComplete$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "Heel Tap Unlace"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nike/adapt/analytics/TrackManager;->gestureTutorialFlowComplete(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic gestureTutorialRepeatSecondShoe$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "Heel Tap Unlace"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nike/adapt/analytics/TrackManager;->gestureTutorialRepeatSecondShoe(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic gestureTutorialSelectedFromGesturesScreen$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "Heel Tap Unlace"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nike/adapt/analytics/TrackManager;->gestureTutorialSelectedFromGesturesScreen(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic gesturesCurrentState$default(Lcom/nike/adapt/analytics/TrackManager;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, "Heel Tap Unlace"

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/analytics/TrackManager;->gesturesCurrentState(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic softwareUpdateNetworkFailure$default(Lcom/nike/adapt/analytics/TrackManager;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nike/adapt/analytics/TrackManager;->softwareUpdateNetworkFailure(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final allowNotificationsDialogPresented()V
    .locals 0

    return-void
.end method

.method public final allowNotificationsDismissSelected()V
    .locals 0

    return-void
.end method

.method public final allowNotificationsSettingsSelected()V
    .locals 0

    return-void
.end method

.method public final appIconBottomSheetMaybeLater()V
    .locals 0

    return-void
.end method

.method public final appIconBottomSheetPresented()V
    .locals 0

    return-void
.end method

.method public final appIconBottomSheetSetSelected()V
    .locals 0

    return-void
.end method

.method public final appIconScreenSelected()V
    .locals 0

    return-void
.end method

.method public final appIconSelected(Lcom/nike/adapt/ui/settings/AppIconsActivity$a;)V
    .locals 1

    const-string v0, "icon"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final autoLaceActionSheetPresented()V
    .locals 0

    return-void
.end method

.method public final autoLaceActionSheetUserSelectsOkay()V
    .locals 0

    return-void
.end method

.method public final autoLaceDisableErrorPresented()V
    .locals 0

    return-void
.end method

.method public final autoLaceEditSelected()V
    .locals 0

    return-void
.end method

.method public final autoLaceEnableErrorPresented()V
    .locals 0

    return-void
.end method

.method public final autoLaceFitSelected(Lcom/nike/adapt/analytics/TrackManager$AutoLaceType;II)V
    .locals 0

    const-string p2, "type"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final autoLaceFitSelectedToastShown()V
    .locals 0

    return-void
.end method

.method public final autoLaceSaveFitSelected(II)V
    .locals 0

    return-void
.end method

.method public final autoLaceScreenPresented(Z)V
    .locals 0

    return-void
.end method

.method public final autoLaceSetFpsErrorPresented()V
    .locals 0

    return-void
.end method

.method public final autoLaceToggleUpdated(Z)V
    .locals 0

    return-void
.end method

.method public final autoLaceUnlacedToastShown()V
    .locals 0

    return-void
.end method

.method public final batteryAccessed(II)V
    .locals 0

    return-void
.end method

.method public final batteryNotificationCriticalBatteryLightsOnDismissed()V
    .locals 0

    return-void
.end method

.method public final batteryNotificationCriticalBatteryLightsOnSent()V
    .locals 0

    return-void
.end method

.method public final batteryNotificationCriticalBatteryLightsTurnOffTapped()V
    .locals 0

    return-void
.end method

.method public final batteryNotificationCriticalBatterySent()V
    .locals 0

    return-void
.end method

.method public final batteryNotificationCriticalBatteryTapped()V
    .locals 0

    return-void
.end method

.method public final batteryNotificationFullyChargedSent()V
    .locals 0

    return-void
.end method

.method public final batteryNotificationFullyChargedTapped()V
    .locals 0

    return-void
.end method

.method public final batteryNotificationLowBatteryLightsOnDismissed()V
    .locals 0

    return-void
.end method

.method public final batteryNotificationLowBatteryLightsOnSent()V
    .locals 0

    return-void
.end method

.method public final batteryNotificationLowBatteryLightsTurnOffTapped()V
    .locals 0

    return-void
.end method

.method public final batteryNotificationLowBatterySent()V
    .locals 0

    return-void
.end method

.method public final batteryNotificationLowBatteryTapped()V
    .locals 0

    return-void
.end method

.method public final batteryReminderNotificationToggleUpdated(Z)V
    .locals 0

    return-void
.end method

.method public final colorChangeDuringPulsing()V
    .locals 0

    return-void
.end method

.method public final colorChangeLacingScreenDuringPulsing()V
    .locals 0

    return-void
.end method

.method public final createPresetModesTray()V
    .locals 0

    return-void
.end method

.method public final dataOptInCloseSelected()V
    .locals 0

    return-void
.end method

.method public final dataOptInConfirmationModalCloseSelected()V
    .locals 0

    return-void
.end method

.method public final dataOptInConfirmationPresented()V
    .locals 0

    return-void
.end method

.method public final dataOptInDismissSelected()V
    .locals 0

    return-void
.end method

.method public final dataOptInDontShareSelected()V
    .locals 0

    return-void
.end method

.method public final dataOptInEnableDataSelected()V
    .locals 0

    return-void
.end method

.method public final dataOptInModalPresented()V
    .locals 0

    return-void
.end method

.method public final dataOptInPageViewed()V
    .locals 0

    return-void
.end method

.method public final dataOptInSecondaryCloseSelected()V
    .locals 0

    return-void
.end method

.method public final dataOptInSecondaryEnableDataSelected()V
    .locals 0

    return-void
.end method

.method public final dataOptInSecondaryModalPresented()V
    .locals 0

    return-void
.end method

.method public final dataOptInToggleSelected(Z)V
    .locals 0

    return-void
.end method

.method public final defaultLightingDuration(I)V
    .locals 0

    return-void
.end method

.method public final effectsDoneButtonSelected()V
    .locals 0

    return-void
.end method

.method public final farewellModalPresented()V
    .locals 0

    return-void
.end method

.method public final fineTuneCompleted(IILjava/lang/String;)V
    .locals 0

    const-string p1, "modeName"

    invoke-static {p3, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final firmwareUpdateNotificationToastShown(Ljava/lang/String;)V
    .locals 1

    const-string v0, "location"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final firstShoeConnectionAttempt()V
    .locals 0

    return-void
.end method

.method public final gestureActionSheetBetaPresented(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final gestureActionsSheetOne(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final gestureActionsSheetOneStart(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final gestureActionsSheetTwo(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final gestureActionsSheetTwoStart(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final gestureEnabledToastSelected(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final gestureEnabledToastShown(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final gestureFailureScreen(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    const-string p2, "type"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "failureReason"

    invoke-static {p3, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final gestureFailureToastShown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "screenFrom"

    invoke-static {p2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final gestureFirmwareUpdateNotificationDismissed()V
    .locals 0

    return-void
.end method

.method public final gestureFirmwareUpdateNotificationPresented()V
    .locals 0

    return-void
.end method

.method public final gestureFirmwareUpdateNotificationSelected()V
    .locals 0

    return-void
.end method

.method public final gestureFirmwareUpdateToastSelected()V
    .locals 0

    return-void
.end method

.method public final gestureFirmwareUpdateToastShown()V
    .locals 0

    return-void
.end method

.method public final gestureFirstShoeSuccess(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final gestureGenericFailure(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final gestureIntroModal(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final gestureIntroModalDismiss(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final gestureIntroModalSelectsLearnMore(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final gestureIntroModalSelectsTurnOn(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final gestureLearnPrompt(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final gestureMoreTips(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "screenFrom"

    invoke-static {p2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final gestureSecondShoeSuccess(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final gestureSuccessToastShown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "screenFrom"

    invoke-static {p2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final gestureTimeoutFailure(Ljava/lang/String;I)V
    .locals 0

    const-string p2, "type"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final gestureTipContinueSelected(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final gestureTipScreen(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final gestureToggleUpdated(ZLjava/lang/String;)V
    .locals 0

    const-string p1, "type"

    invoke-static {p2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final gestureTutorialDoneSelected(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final gestureTutorialExited(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "screenExitedFrom"

    invoke-static {p2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final gestureTutorialFlowComplete(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final gestureTutorialRepeatSecondShoe(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final gestureTutorialSelectedFromGesturesScreen(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final gestureUserSelectsGotItFromActionSheetBeta(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final gesturesCriticalBatteryErrorPresented()V
    .locals 0

    return-void
.end method

.method public final gesturesCurrentState(ZLjava/lang/String;)V
    .locals 0

    const-string p1, "type"

    invoke-static {p2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final gesturesErrorUserSelectsOk()V
    .locals 0

    return-void
.end method

.method public final gesturesErrorUserSelectsSettings()V
    .locals 0

    return-void
.end method

.method public final gesturesFailedToDisableErrorPresented()V
    .locals 0

    return-void
.end method

.method public final gesturesFailedToEnableErrorPresented()V
    .locals 0

    return-void
.end method

.method public final gesturesPreferencesSelectedFromMyShoes()V
    .locals 0

    return-void
.end method

.method public final gesturesScreenPresented()V
    .locals 0

    return-void
.end method

.method public final gesturesUserSelectsSubmitFeedback()V
    .locals 0

    return-void
.end method

.method public final googleVoiceInfoPrompt()V
    .locals 0

    return-void
.end method

.method public final googleVoiceLacingNotificationDismiss()V
    .locals 0

    return-void
.end method

.method public final googleVoiceLacingNotificationPresented()V
    .locals 0

    return-void
.end method

.method public final googleVoiceLacingNotificationTryNow()V
    .locals 0

    return-void
.end method

.method public final googleVoiceTryNow()V
    .locals 0

    return-void
.end method

.method public final googleVoiceViewAll()V
    .locals 0

    return-void
.end method

.method public final init()V
    .locals 0

    return-void
.end method

.method public final isAutoGeneratedModeSelected(Ljava/lang/String;)V
    .locals 1

    const-string v0, "modeName"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final isCalibrateOrthoticsCompleted()V
    .locals 0

    return-void
.end method

.method public final isCalibrateOrthoticsStarted()V
    .locals 0

    return-void
.end method

.method public final isColorPaletteColorSelected(Ljava/lang/String;)V
    .locals 1

    const-string v0, "colorName"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final isConnectionErrorGetHelpButtonSelected()V
    .locals 0

    return-void
.end method

.method public final isConnectionErrorTryAgainButtonSelected()V
    .locals 0

    return-void
.end method

.method public final isDisconnectedCalibrationErrorRestartButtonSelected()V
    .locals 0

    return-void
.end method

.method public final isDisconnectedCalibrationErrorShown()V
    .locals 0

    return-void
.end method

.method public final isDisconnectedCalibrationErrorSkipButtonSelected()V
    .locals 0

    return-void
.end method

.method public final isHomeViewLoaded(Lo9/a;)V
    .locals 1

    const-string v0, "homeView"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final isLacingValueLeftChanged(I)V
    .locals 0

    return-void
.end method

.method public final isLacingValueRightChanged(I)V
    .locals 0

    return-void
.end method

.method public final isLockdownInitiated()V
    .locals 0

    return-void
.end method

.method public final isLoginStarted()V
    .locals 0

    return-void
.end method

.method public final isLogout()V
    .locals 0

    return-void
.end method

.method public final isModeAccessed(I)V
    .locals 0

    return-void
.end method

.method public final isModeAdded(IIILjava/lang/String;)V
    .locals 0

    const-string p1, "modeName"

    invoke-static {p4, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final isModeDeleted(I[Ljava/lang/String;)V
    .locals 0

    const-string p1, "modeNames"

    invoke-static {p2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final isModeSelected(IILjava/lang/String;)V
    .locals 0

    const-string p1, "modeName"

    invoke-static {p3, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final isOnboardingVideoCompleted()V
    .locals 0

    return-void
.end method

.method public final isOnboardingVideoNext()V
    .locals 0

    return-void
.end method

.method public final isOnboardingVideoPrevious()V
    .locals 0

    return-void
.end method

.method public final isPairingComplete()V
    .locals 0

    return-void
.end method

.method public final isPairingConnectionErrorShown()V
    .locals 0

    return-void
.end method

.method public final isPairingLogout()V
    .locals 0

    return-void
.end method

.method public final isPairingStarted()V
    .locals 0

    return-void
.end method

.method public final isQuickUnlaceSelected()V
    .locals 0

    return-void
.end method

.method public final isScreenViewed(Lcom/nike/adapt/analytics/TrackManager$Screen;)V
    .locals 1

    const-string v0, "screen"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final isSettingsAccessed(Ljava/lang/String;)V
    .locals 1

    const-string v0, "settingsCategory"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final isShoeAlreadyPairedGetHelpButtonSelected()V
    .locals 0

    return-void
.end method

.method public final isShoeAlreadyPairedShown()V
    .locals 0

    return-void
.end method

.method public final isShoeAlreadyPairedTryAgainButtonSelected()V
    .locals 0

    return-void
.end method

.method public final isShopNowSelected()V
    .locals 0

    return-void
.end method

.method public final isSoftwareUpdateAvailablePrompted()V
    .locals 0

    return-void
.end method

.method public final isSoftwareUpdateErrorRestart()V
    .locals 0

    return-void
.end method

.method public final isSoftwareUpdateErrorRestartAndRetry()V
    .locals 0

    return-void
.end method

.method public final isSoftwareUpdateErrorThrown()V
    .locals 0

    return-void
.end method

.method public final isSoftwareUpdateErrorThrownSecondTry()V
    .locals 0

    return-void
.end method

.method public final isSoftwareUpdateErrorThrownSecondTryGetHelp()V
    .locals 0

    return-void
.end method

.method public final isSoftwareUpdateErrorWhenAppBackgrounded()V
    .locals 0

    return-void
.end method

.method public final isSoftwareUpdateSelectedFromPrompt()V
    .locals 0

    return-void
.end method

.method public final isUserScaleCompleted(IIIILjava/lang/String;)V
    .locals 0

    const-string p1, "modeName"

    invoke-static {p5, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final isUserScaleStarted()V
    .locals 0

    return-void
.end method

.method public final lightPackActivated(Lz8/a;)V
    .locals 1

    const-string v0, "lightPackType"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final lightPackTurnedOff(Lz8/a;)V
    .locals 1

    const-string v0, "lightPack"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final lightPacksActivatedActionSheetDismissButtonSelected()V
    .locals 0

    return-void
.end method

.method public final lightPacksActivatedActionSheetOkButtonSelected()V
    .locals 0

    return-void
.end method

.method public final lightPacksActivatedActionSheetPresented()V
    .locals 0

    return-void
.end method

.method public final lightPacksCarouselPresented()V
    .locals 0

    return-void
.end method

.method public final lightPacksTooltipAlternatePresented()V
    .locals 0

    return-void
.end method

.method public final lightPacksTooltipOneNextSelected()V
    .locals 0

    return-void
.end method

.method public final lightPacksTooltipOnePresented()V
    .locals 0

    return-void
.end method

.method public final lightPacksTooltipTwoGotItSelected()V
    .locals 0

    return-void
.end method

.method public final lightPacksTooltipTwoPresented()V
    .locals 0

    return-void
.end method

.method public final lightPacksUpdateFirmwareActionSheetDismissButtonSelected()V
    .locals 0

    return-void
.end method

.method public final lightPacksUpdateFirmwareActionSheetPresented()V
    .locals 0

    return-void
.end method

.method public final lightPacksUpdateFirmwareActionSheetUpdateButtonSelected()V
    .locals 0

    return-void
.end method

.method public final lightPacksUpdateFirmwareToastNotificationsSelected()V
    .locals 0

    return-void
.end method

.method public final lightingDuoColorScreenViewed()V
    .locals 0

    return-void
.end method

.method public final lightingEffectsBatteryLow()V
    .locals 0

    return-void
.end method

.method public final lightingEffectsBatteryOverHeat()V
    .locals 0

    return-void
.end method

.method public final lightingEffectsScreenViewed()V
    .locals 0

    return-void
.end method

.method public final lightingFirmwareUpdateBottomSheetPresented()V
    .locals 0

    return-void
.end method

.method public final lightingPaletteDurationAccessed(I)V
    .locals 0

    return-void
.end method

.method public final lightingSingleColorScreenViewed()V
    .locals 0

    return-void
.end method

.method public final lightingStateOffClicked()V
    .locals 0

    return-void
.end method

.method public final lightingStateOnClicked()V
    .locals 0

    return-void
.end method

.method public final lightingToolTipAlternateOnePresented()V
    .locals 0

    return-void
.end method

.method public final lightingToolTipAlternateTwoPresented()V
    .locals 0

    return-void
.end method

.method public final lightingToolTipGotItSelected()V
    .locals 0

    return-void
.end method

.method public final lightingToolTipNextSelected()V
    .locals 0

    return-void
.end method

.method public final lightingToolTipPresented()V
    .locals 0

    return-void
.end method

.method public final lightingToolTipTwoPresented()V
    .locals 0

    return-void
.end method

.method public final lightsEffectDurationSelected(Ljava/lang/String;)V
    .locals 1

    const-string v0, "duration"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final lightsEffectSelected(Ljava/lang/String;)V
    .locals 1

    const-string v0, "effect"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final manageGoogleVoice(Lr7/a;)V
    .locals 1

    const-string v0, "deepLink"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final modeEnteredManually(Ljava/lang/String;II)V
    .locals 0

    const-string p2, "modeName"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final modeRenamed(Ljava/lang/String;)V
    .locals 1

    const-string v0, "modeName"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final modesReordered()V
    .locals 0

    return-void
.end method

.method public final multipairAddNewShoe()V
    .locals 0

    return-void
.end method

.method public final multipairCalibrateFitCompleted()V
    .locals 0

    return-void
.end method

.method public final multipairColorWayColorSelected(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final multipairColorWayScreenSelected()V
    .locals 0

    return-void
.end method

.method public final multipairConnectedCancel()V
    .locals 0

    return-void
.end method

.method public final multipairConnectedRemove()V
    .locals 0

    return-void
.end method

.method public final multipairEditNicknameSelected()V
    .locals 0

    return-void
.end method

.method public final multipairFindYourFitFlowFinished(II)V
    .locals 0

    return-void
.end method

.method public final multipairFindYourFitFlowStarted()V
    .locals 0

    return-void
.end method

.method public final multipairFirmwareVersionBackSelected()V
    .locals 0

    return-void
.end method

.method public final multipairFirmwareVersionSelected()V
    .locals 0

    return-void
.end method

.method public final multipairFitSelected()V
    .locals 0

    return-void
.end method

.method public final multipairIconSelected(I)V
    .locals 0

    return-void
.end method

.method public final multipairModalConnected()V
    .locals 0

    return-void
.end method

.method public final multipairModelInformationBackSelected()V
    .locals 0

    return-void
.end method

.method public final multipairModelInformationSelected()V
    .locals 0

    return-void
.end method

.method public final multipairOnBackPressed()V
    .locals 0

    return-void
.end method

.method public final multipairOnShoeCardSelected()V
    .locals 0

    return-void
.end method

.method public final multipairPairingFlowFinished()V
    .locals 0

    return-void
.end method

.method public final multipairPairingFlowStarted()V
    .locals 0

    return-void
.end method

.method public final multipairRemoveShoeSelected()V
    .locals 0

    return-void
.end method

.method public final multipairShoePreferenceBackSelected()V
    .locals 0

    return-void
.end method

.method public final myLightsDoneButtonSelected()V
    .locals 0

    return-void
.end method

.method public final onChargerErrorPresentedFindYourFit()V
    .locals 0

    return-void
.end method

.method public final pairingConnectionErrorGetHelp()V
    .locals 0

    return-void
.end method

.method public final pairingConnectionErrorPresented()V
    .locals 0

    return-void
.end method

.method public final pairingConnectionErrorReconnect()V
    .locals 0

    return-void
.end method

.method public final presetsCreated()V
    .locals 0

    return-void
.end method

.method public final presetsUpdated()V
    .locals 0

    return-void
.end method

.method public final pulsingLightsFirmwareNotificationPresented()V
    .locals 0

    return-void
.end method

.method public final pulsingLightsTurnedOff()V
    .locals 0

    return-void
.end method

.method public final pulsingLightsTurnedOn()V
    .locals 0

    return-void
.end method

.method public final recommendedPresetCreated(IILjava/lang/String;)V
    .locals 0

    const-string p1, "modeName"

    invoke-static {p3, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final settingsDeleteAccountPageViewed()V
    .locals 0

    return-void
.end method

.method public final settingsDeleteAccountSelected()V
    .locals 0

    return-void
.end method

.method public final settingsDeleteAccountServiceErrorPresented()V
    .locals 0

    return-void
.end method

.method public final settingsPartnersAppSelected(Ljava/lang/String;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final settingsPartnersPageViewed()V
    .locals 0

    return-void
.end method

.method public final settingsVoiceScreenViewed()V
    .locals 0

    return-void
.end method

.method public final shoeRecognizedWhenPaired(Ls9/r;)V
    .locals 1

    const-string v0, "shoeType"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final shoeTypeSelected(Ls9/r;)V
    .locals 1

    const-string v0, "shoeType"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final showSplashScreen(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final softwareFlashSuccess()V
    .locals 0

    return-void
.end method

.method public final softwareUpdateConnectionReEstablished(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "firmwareVersionLeft"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "firmwareVersionRight"

    invoke-static {p2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final softwareUpdateErrorThrownSecondTryRestart()V
    .locals 0

    return-void
.end method

.method public final softwareUpdateFailedReason(Ljava/lang/String;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final softwareUpdateNetworkFailure(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final softwareUpdateRestart()V
    .locals 0

    return-void
.end method

.method public final softwareUpdateStarted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "firmwareVersionFrom"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "firmwareVersionTo"

    invoke-static {p2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final softwareUpdateSuccess()V
    .locals 0

    return-void
.end method

.method public final softwareUpdateUserCancels()V
    .locals 0

    return-void
.end method

.method public final updatePresetModesTray()V
    .locals 0

    return-void
.end method
