package x;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: compiled from: NotificationCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f17645a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CharSequence f17649e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public CharSequence f17650f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public PendingIntent f17651g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f17652h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public p f17654j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f17655k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f17656l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f17657m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f17658n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Bundle f17659o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public String f17660p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f17661q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Notification f17662r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Deprecated
    public ArrayList<String> f17663s;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayList<m> f17646b = new ArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ArrayList<t> f17647c = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ArrayList<m> f17648d = new ArrayList<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f17653i = true;

    public o(Context context, String str) {
        Notification notification = new Notification();
        this.f17662r = notification;
        this.f17645a = context;
        this.f17660p = str;
        notification.when = System.currentTimeMillis();
        this.f17662r.audioStreamType = -1;
        this.f17652h = 0;
        this.f17663s = new ArrayList<>();
        this.f17661q = true;
    }

    public static CharSequence b(CharSequence charSequence) {
        return (charSequence != null && charSequence.length() > 5120) ? charSequence.subSequence(0, 5120) : charSequence;
    }

    public final Notification a() {
        Bundle bundle;
        q qVar = new q(this);
        p pVar = qVar.f17666b.f17654j;
        if (pVar != null) {
            pVar.b(qVar);
        }
        Notification notificationBuild = Build.VERSION.SDK_INT >= 26 ? qVar.f17665a.build() : qVar.f17665a.build();
        Objects.requireNonNull(qVar.f17666b);
        if (pVar != null) {
            Objects.requireNonNull(qVar.f17666b.f17654j);
        }
        if (pVar != null && (bundle = notificationBuild.extras) != null) {
            pVar.a(bundle);
        }
        return notificationBuild;
    }

    public final void c(int i10, boolean z10) {
        if (z10) {
            Notification notification = this.f17662r;
            notification.flags = i10 | notification.flags;
        } else {
            Notification notification2 = this.f17662r;
            notification2.flags = (~i10) & notification2.flags;
        }
    }

    public final o d(p pVar) {
        if (this.f17654j != pVar) {
            this.f17654j = pVar;
            if (pVar.f17664a != this) {
                pVar.f17664a = this;
                d(pVar);
            }
        }
        return this;
    }
}
