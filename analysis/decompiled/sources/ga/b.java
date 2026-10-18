package ga;

import gd.q;
import java.util.Map;

/* JADX INFO: compiled from: AdaptKitGestureConfigurationResponse.kt */
/* JADX INFO: loaded from: classes.dex */
public enum b implements eb.d {
    CRITICAL_BATTERY("CRITICAL_BATTERY"),
    ACTIVE_SESSION("ACTIVE_SESSION"),
    CONFIG_SET("CONFIG_SET"),
    UNKNOWN("UNKNOWN");


    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f7922h;

    b(String str) {
        this.f7922h = str;
    }

    @Override // eb.d
    public final String b() {
        return a0.d.c("GestureConfigurationResponse [", this.f7922h, "]");
    }

    @Override // eb.d
    public final Map<String, Object> m() {
        return q.f8071h;
    }
}
