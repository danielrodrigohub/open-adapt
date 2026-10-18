package tb;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;
import n.d;
import p4.h;

/* JADX INFO: compiled from: CustomTabManager.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference<Context> f15590a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicReference<n.b> f15591b = new AtomicReference<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CountDownLatch f15592c = new CountDownLatch(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public a f15593d;

    /* JADX INFO: compiled from: CustomTabManager.java */
    public class a extends d {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            ub.a.Companion.a("CustomTabsService is disconnected");
            c.this.f15591b.set(null);
            c.this.f15592c.countDown();
        }
    }

    public c(Context context) {
        this.f15590a = new WeakReference<>(context);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0038 A[Catch: all -> 0x004f, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x0007, B:9:0x0018, B:11:0x002d, B:12:0x0030, B:14:0x0038), top: B:20:0x0001 }] */
    public final synchronized void a(String str) {
        if (this.f15593d != null) {
            return;
        }
        this.f15593d = new a();
        Context context = this.f15590a.get();
        if (context != null) {
            a aVar = this.f15593d;
            aVar.f11131h = context.getApplicationContext();
            Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
            if (!TextUtils.isEmpty(str)) {
                intent.setPackage(str);
            }
            if (!context.bindService(intent, aVar, 33)) {
                ub.a.C0280a c0280a = ub.a.Companion;
                Objects.requireNonNull(c0280a);
                c0280a.a(h.B("info: ", "Unable to bind custom tabs service"));
                this.f15592c.countDown();
            }
        } else {
            ub.a.C0280a c0280a2 = ub.a.Companion;
            Objects.requireNonNull(c0280a2);
            c0280a2.a(h.B("info: ", "Unable to bind custom tabs service"));
            this.f15592c.countDown();
        }
    }
}
