package zb;

import android.app.PendingIntent;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.fragment.app.p;
import androidx.lifecycle.o;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import jd.d;
import jd.i;
import ld.e;
import p4.h;
import rd.w;

/* JADX INFO: compiled from: OIDCAuthBrowser.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: compiled from: OIDCAuthBrowser.kt */
    @e(c = "com.nike.authcomponent.oidc.internal.nativeoidc.browser.OIDCAuthBrowserKt", f = "OIDCAuthBrowser.kt", l = {100}, m = "startForResult")
    public static final class a extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public p f19473h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Intent f19474i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public w f19475j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public /* synthetic */ Object f19476k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f19477l;

        public a(d<? super a> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f19476k = obj;
            this.f19477l |= Integer.MIN_VALUE;
            return c.b(null, null, this);
        }
    }

    /* JADX INFO: compiled from: OIDCAuthBrowser.kt */
    public static final class b<O> implements androidx.activity.result.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ d<androidx.activity.result.a> f19478a;

        /* JADX WARN: Multi-variable type inference failed */
        public b(d<? super androidx.activity.result.a> dVar) {
            this.f19478a = dVar;
        }

        @Override // androidx.activity.result.b
        public final void a(Object obj) {
            this.f19478a.resumeWith((androidx.activity.result.a) obj);
        }
    }

    public static final Intent a(tb.c cVar, Uri uri) {
        n.e eVar;
        Uri[] uriArr = {uri};
        try {
            cVar.f15592c.await(1L, TimeUnit.SECONDS);
        } catch (InterruptedException unused) {
            ub.a.C0280a c0280a = ub.a.Companion;
            Objects.requireNonNull(c0280a);
            c0280a.a(h.B("info: ", "Interrupted while waiting for browser connection"));
            cVar.f15592c.countDown();
        }
        n.b bVar = cVar.f15591b.get();
        if (bVar == null) {
            eVar = null;
        } else {
            n.a aVar = new n.a();
            try {
                eVar = !bVar.f11126a.d(aVar) ? null : new n.e(bVar.f11126a, aVar, bVar.f11127b);
            } catch (RemoteException unused2) {
            }
            if (eVar == null) {
                ub.a.a("Failed to create custom tabs session through custom tabs client");
                eVar = null;
            } else {
                List<Bundle> listEmptyList = Collections.emptyList();
                Uri uri2 = uriArr[0];
                Bundle bundle = new Bundle();
                PendingIntent pendingIntent = eVar.f11135d;
                if (pendingIntent != null) {
                    bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
                }
                try {
                    eVar.f11132a.a(eVar.f11133b, uri2, bundle, listEmptyList);
                } catch (RemoteException unused3) {
                }
            }
        }
        n.c cVar2 = new n.c(eVar);
        if (!cVar2.f11128a.hasExtra("android.support.customtabs.extra.SESSION")) {
            cVar2.a(null, null);
        }
        cVar2.f11128a.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", cVar2.f11130c);
        Intent intent = cVar2.f11128a;
        Objects.requireNonNull(cVar2.f11129b);
        intent.putExtras(new Bundle());
        cVar2.f11128a.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", 0);
        Intent intent2 = cVar2.f11128a;
        h.i(intent2, "this.createTabBuilder(possibleUri).build().intent");
        return intent2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v2, types: [T, androidx.activity.result.c] */
    public static final Object b(p pVar, Intent intent, d<? super androidx.activity.result.a> dVar) throws Throwable {
        a aVar;
        w wVar;
        if (dVar instanceof a) {
            aVar = (a) dVar;
            int i10 = aVar.f19477l;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                aVar.f19477l = i10 - Integer.MIN_VALUE;
            } else {
                aVar = new a(dVar);
            }
        } else {
            aVar = new a(dVar);
        }
        Object obj = aVar.f19476k;
        kd.a aVar2 = kd.a.COROUTINE_SUSPENDED;
        int i11 = aVar.f19477l;
        if (i11 == 0) {
            d3.e.p(obj);
            w wVar2 = new w();
            aVar.f19473h = pVar;
            aVar.f19474i = intent;
            aVar.f19475j = wVar2;
            aVar.f19477l = 1;
            i iVar = new i(o.t(aVar));
            ?? D = pVar.f666o.d(UUID.randomUUID().toString(), new e.c(), new b(iVar));
            wVar2.f14795h = D;
            D.a(intent);
            Object objA = iVar.a();
            if (objA == aVar2) {
                return aVar2;
            }
            obj = objA;
            wVar = wVar2;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            wVar = aVar.f19475j;
            d3.e.p(obj);
        }
        androidx.activity.result.c cVar = (androidx.activity.result.c) wVar.f14795h;
        if (cVar != null) {
            cVar.b();
        }
        return obj;
    }
}
