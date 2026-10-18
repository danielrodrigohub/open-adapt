package o3;

import android.media.metrics.LogSessionId;
import java.util.Objects;

/* JADX INFO: compiled from: PlayerId.java */
/* JADX INFO: loaded from: classes.dex */
public final class v0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f12249a;

    /* JADX INFO: compiled from: PlayerId.java */
    public static final class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final a f12250b = new a(LogSessionId.LOG_SESSION_ID_NONE);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LogSessionId f12251a;

        public a(LogSessionId logSessionId) {
            this.f12251a = logSessionId;
        }
    }

    static {
        if (m5.g0.f10384a < 31) {
            new v0();
        } else {
            a aVar = a.f12250b;
        }
    }

    public v0() {
        this(null);
        m5.a.e(m5.g0.f10384a < 31);
    }

    public final LogSessionId a() {
        a aVar = this.f12249a;
        Objects.requireNonNull(aVar);
        return aVar.f12251a;
    }

    public v0(a aVar) {
        this.f12249a = aVar;
    }
}
