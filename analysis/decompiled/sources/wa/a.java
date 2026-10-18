package wa;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import java.util.Objects;
import java.util.UUID;
import qd.p;
import rd.o;
import v9.t;

/* JADX INFO: compiled from: AdaptKitBaseBroadcastReceiver.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class a extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f17539a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Bundle f17540b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Intent f17541c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f17542d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f17543e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f17544f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final xa.b f17545g;

    /* JADX INFO: renamed from: wa.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdaptKitBaseBroadcastReceiver.kt */
    public static final class C0307a extends o implements p<Intent, String, fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ Intent f17547i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ Context f17548j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0307a(Intent intent, Context context) {
            super(2);
            this.f17547i = intent;
            this.f17548j = context;
        }

        @Override // qd.p
        public final fd.o invoke(Intent intent, String str) {
            String str2 = str;
            p4.h.j(intent, "<anonymous parameter 0>");
            p4.h.j(str2, "deviceId");
            a aVar = a.this;
            Intent intent2 = this.f17547i;
            Objects.requireNonNull(aVar);
            if (p4.h.c(intent2.getAction(), aVar.e())) {
                a aVar2 = a.this;
                String packageName = this.f17548j.getPackageName();
                p4.h.i(packageName, "context.packageName");
                Objects.requireNonNull(aVar2);
                aVar2.f17539a = packageName;
                a aVar3 = a.this;
                Bundle resultExtras = aVar3.getResultExtras(false);
                if (resultExtras == null) {
                    resultExtras = a.this.getResultExtras(true);
                    p4.h.i(resultExtras, "getResultExtras(true)");
                }
                aVar3.f17540b = resultExtras;
                a aVar4 = a.this;
                Intent intent3 = this.f17547i;
                Objects.requireNonNull(aVar4);
                p4.h.j(intent3, "<set-?>");
                aVar4.f17541c = intent3;
                a aVar5 = a.this;
                Objects.requireNonNull(aVar5);
                aVar5.f17542d = str2;
                a.this.c();
            }
            return fd.o.f7408a;
        }
    }

    public a() {
        String string = UUID.randomUUID().toString();
        p4.h.i(string, "randomUUID().toString()");
        this.f17543e = string;
        this.f17545g = xa.b.f18116a;
    }

    public final String a() {
        String str = this.f17542d;
        if (str != null) {
            return str;
        }
        p4.h.C("deviceId");
        throw null;
    }

    public final Bundle b() {
        Bundle bundle = this.f17540b;
        if (bundle != null) {
            return bundle;
        }
        p4.h.C("response");
        throw null;
    }

    public abstract void c();

    public final void d(Context context) {
        p4.h.j(context, "context");
        if (this.f17544f) {
            return;
        }
        this.f17544f = true;
        Objects.requireNonNull(this.f17545g);
        IntentFilter intentFilter = new IntentFilter(e());
        Objects.requireNonNull(xa.b.HandlerThreadC0315b.f18118h);
        context.registerReceiver(this, intentFilter, "com.nike.android.adaptkit.permission.ACCESS_ADAPT_KIT", xa.b.HandlerThreadC0315b.f18119i);
    }

    public abstract String e();

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        p4.h.j(context, "context");
        p4.h.j(intent, "intent");
        xa.b bVar = this.f17545g;
        C0307a c0307a = new C0307a(intent, context);
        Objects.requireNonNull(bVar);
        try {
            String stringExtra = intent.getStringExtra("EXTRA_APPLICATION_ID");
            boolean zC = false;
            if ((stringExtra == null || p4.h.c(context.getPackageName(), stringExtra)) ? false : true) {
                String stringExtra2 = intent.getStringExtra("EXTRA_UPM_ID");
                String strC = t.f16822a.c().c();
                if (stringExtra2 != null) {
                    zC = p4.h.c(stringExtra2, strC);
                }
                if (zC) {
                    String stringExtra3 = intent.getStringExtra("EXTRA_ADAPT_KIT_DEVICE_ID");
                    p4.h.h(stringExtra3, "null cannot be cast to non-null type kotlin.String");
                    c0307a.invoke(intent, stringExtra3);
                }
            }
        } catch (Throwable unused) {
        }
    }
}
