package da;

/* JADX INFO: compiled from: AdaptKitConnectedDeviceState.kt */
/* JADX INFO: loaded from: classes.dex */
public enum a {
    NONE(1, "none"),
    IDLE(2, "idle"),
    IN_SESSION(2, "in_session"),
    FIRMWARE_UPLOAD_IN_PROGRESS(2, "firmware_upload"),
    UNKNOWN(2, "unknown");


    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f6133h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f6134i;

    a(int i10, String str) {
        this.f6133h = i10;
        this.f6134i = str;
    }
}
