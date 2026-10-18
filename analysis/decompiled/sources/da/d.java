package da;

import androidx.appcompat.widget.p;

/* JADX INFO: compiled from: AdaptKitConnectionState.kt */
/* JADX INFO: loaded from: classes.dex */
public enum d {
    NOT_INITIATED,
    CONNECTION_STARTING,
    CONNECTING,
    CONNECTED_AND_STARTING_AUTHENTICATION_FLOW,
    CONNECTED_AND_AUTHENTICATION_FAILURE,
    CONNECTED_AND_REQUIRES_AUTHENTICATION,
    CONNECTED_AND_GETTING_INFORMATION,
    CONNECTED_AND_AUTHENTICATED,
    CONNECTED_AND_AUTHENTICATED_REMOTELY,
    BONDING_REQUIRED_BY_USER,
    BONDING_FAILED,
    DISCONNECTED,
    /* JADX INFO: Fake field, exist only in values array */
    CLOSED,
    /* JADX INFO: Fake field, exist only in values array */
    FORCED_CLOSE_BY_CORE_RF,
    USER_INTERVENTION_REQUIRED,
    USER_INTERVENTION_REQUIRED_BLE;

    public final boolean b() {
        return p.g(this, CONNECTED_AND_AUTHENTICATED, CONNECTED_AND_AUTHENTICATED_REMOTELY);
    }

    public final boolean g() {
        return p.g(this, NOT_INITIATED, DISCONNECTED);
    }
}
