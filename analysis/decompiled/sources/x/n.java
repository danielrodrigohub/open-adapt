package x;

import android.app.Notification;
import android.os.Bundle;

/* JADX INFO: compiled from: NotificationCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class n extends p {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CharSequence f17644b;

    @Override // x.p
    public final void a(Bundle bundle) {
        bundle.putString("androidx.core.app.extra.COMPAT_TEMPLATE", "androidx.core.app.NotificationCompat$BigTextStyle");
    }

    @Override // x.p
    public final void b(l lVar) {
        new Notification.BigTextStyle(((q) lVar).f17665a).setBigContentTitle(null).bigText(this.f17644b);
    }
}
