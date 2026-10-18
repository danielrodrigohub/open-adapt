package k1;

import android.app.Notification;

/* JADX INFO: compiled from: ForegroundInfo.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f9590a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f9591b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Notification f9592c;

    public f(int i10, Notification notification, int i11) {
        this.f9590a = i10;
        this.f9592c = notification;
        this.f9591b = i11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || f.class != obj.getClass()) {
            return false;
        }
        f fVar = (f) obj;
        if (this.f9590a == fVar.f9590a && this.f9591b == fVar.f9591b) {
            return this.f9592c.equals(fVar.f9592c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f9592c.hashCode() + (((this.f9590a * 31) + this.f9591b) * 31);
    }

    public final String toString() {
        return "ForegroundInfo{mNotificationId=" + this.f9590a + ", mForegroundServiceType=" + this.f9591b + ", mNotification=" + this.f9592c + '}';
    }
}
