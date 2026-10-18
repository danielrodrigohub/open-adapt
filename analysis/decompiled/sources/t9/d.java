package t9;

/* JADX INFO: compiled from: SimpleAdaptConnectionState.kt */
/* JADX INFO: loaded from: classes.dex */
public enum d {
    CONNECTED,
    CONNECTING,
    DISCONNECTED;

    public final boolean b() {
        return this == CONNECTED;
    }
}
