package xa;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import fd.o;
import java.util.Objects;
import p4.h;
import qd.l;
import v9.t;

/* JADX INFO: compiled from: AdaptKitBroadcastReceiverUtil.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f18116a = new b();

    /* JADX INFO: compiled from: AdaptKitBroadcastReceiverUtil.kt */
    public static final class a extends BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final l<Bundle, o> f18117a;

        /* JADX WARN: Multi-variable type inference failed */
        public a(l<? super Bundle, o> lVar) {
            this.f18117a = lVar;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            h.j(context, "context");
            if (intent != null) {
                l<Bundle, o> lVar = this.f18117a;
                Bundle resultExtras = getResultExtras(true);
                h.i(resultExtras, "getResultExtras(true)");
                lVar.invoke(resultExtras);
            }
        }
    }

    /* JADX INFO: renamed from: xa.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdaptKitBroadcastReceiverUtil.kt */
    public static final class HandlerThreadC0315b extends HandlerThread {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final HandlerThreadC0315b f18118h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final Handler f18119i;

        static {
            HandlerThreadC0315b handlerThreadC0315b = new HandlerThreadC0315b();
            f18118h = handlerThreadC0315b;
            handlerThreadC0315b.start();
            f18119i = new Handler(handlerThreadC0315b.getLooper());
        }

        public HandlerThreadC0315b() {
            super("AdaptKit_Receiver_Handler", 10);
        }
    }

    /* JADX INFO: compiled from: AdaptKitBroadcastReceiverUtil.kt */
    public static final class c extends rd.o implements l<Bundle, o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ l<Bundle, o> f18120h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public c(l<? super Bundle, o> lVar) {
            super(1);
            this.f18120h = lVar;
        }

        @Override // qd.l
        public final o invoke(Bundle bundle) {
            Bundle bundle2 = bundle;
            h.j(bundle2, "it");
            this.f18120h.invoke(bundle2);
            return o.f7408a;
        }
    }

    public final Intent a(Context context, Intent intent, String str) {
        intent.putExtra("EXTRA_ADK_VERSION_CODE", 1);
        intent.putExtra("EXTRA_APPLICATION_ID", context.getPackageName());
        intent.putExtra("EXTRA_UPM_ID", t.f16822a.c().c());
        intent.putExtra("EXTRA_ADAPT_KIT_DEVICE_ID", str);
        return intent;
    }

    public final void b(Context context, String str, l lVar) {
        h.j(str, "deviceId");
        Intent intent = new Intent("com.nike.android.adaptkit.ACTION_ADAPT_KIT_DEVICE_NOTIFICATION");
        a(context, intent, str);
        lVar.invoke(intent);
        context.sendBroadcast(intent, "com.nike.android.adaptkit.permission.ACCESS_ADAPT_KIT");
    }

    public final void c(Context context, String str, String str2, l<? super Intent, o> lVar, l<? super Bundle, o> lVar2) {
        h.j(context, "context");
        h.j(str, "deviceId");
        h.j(str2, "action");
        h.j(lVar, "sendingIntent");
        Intent intent = new Intent(str2);
        a(context, intent, str);
        lVar.invoke(intent);
        a aVar = new a(new c(lVar2));
        Objects.requireNonNull(HandlerThreadC0315b.f18118h);
        context.sendOrderedBroadcast(intent, "com.nike.android.adaptkit.permission.ACCESS_ADAPT_KIT", aVar, HandlerThreadC0315b.f18119i, 0, null, null);
    }
}
