package n;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import java.util.Objects;
import x.i;

/* JADX INFO: compiled from: CustomTabsIntent.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Intent f11128a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d3.e f11129b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f11130c;

    public c(e eVar) {
        Intent intent = new Intent("android.intent.action.VIEW");
        this.f11128a = intent;
        this.f11129b = new d3.e();
        this.f11130c = true;
        if (eVar != null) {
            intent.setPackage(eVar.f11134c.getPackageName());
            a.a.AbstractBinderC0000a abstractBinderC0000a = (a.a.AbstractBinderC0000a) eVar.f11133b;
            Objects.requireNonNull(abstractBinderC0000a);
            a(abstractBinderC0000a, eVar.f11135d);
        }
    }

    public final void a(IBinder iBinder, PendingIntent pendingIntent) {
        Bundle bundle = new Bundle();
        i.b(bundle, "android.support.customtabs.extra.SESSION", iBinder);
        if (pendingIntent != null) {
            bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
        }
        this.f11128a.putExtras(bundle);
    }
}
