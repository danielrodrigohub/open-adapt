package x;

import android.app.PendingIntent;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;
import com.nike.adapt.R;

/* JADX INFO: compiled from: NotificationCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Bundle f17632a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public IconCompat f17633b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final u[] f17634c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final u[] f17635d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f17636e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f17637f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f17638g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f17639h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Deprecated
    public int f17640i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CharSequence f17641j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public PendingIntent f17642k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f17643l;

    public m(CharSequence charSequence, PendingIntent pendingIntent) {
        IconCompat iconCompatB = IconCompat.b("", R.drawable.ic_shoe_adapt);
        Bundle bundle = new Bundle();
        this.f17637f = true;
        this.f17633b = iconCompatB;
        int i10 = iconCompatB.f1770a;
        if ((i10 == -1 ? IconCompat.a.c(iconCompatB.f1771b) : i10) == 2) {
            this.f17640i = iconCompatB.c();
        }
        this.f17641j = o.b(charSequence);
        this.f17642k = pendingIntent;
        this.f17632a = bundle;
        this.f17634c = null;
        this.f17635d = null;
        this.f17636e = true;
        this.f17638g = 0;
        this.f17637f = true;
        this.f17639h = false;
        this.f17643l = false;
    }

    public final IconCompat a() {
        int i10;
        if (this.f17633b == null && (i10 = this.f17640i) != 0) {
            this.f17633b = IconCompat.b("", i10);
        }
        return this.f17633b;
    }
}
