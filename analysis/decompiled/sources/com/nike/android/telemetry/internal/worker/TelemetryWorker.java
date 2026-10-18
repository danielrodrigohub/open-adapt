package com.nike.android.telemetry.internal.worker;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.newrelic.agent.android.instrumentation.okhttp3.OkHttp3Instrumentation;
import com.newrelic.agent.android.util.Constants;
import gb.b;
import gb.c;
import gd.j;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Observable;
import java.util.Observer;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import l1.k;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import p4.h;

/* JADX INFO: compiled from: TelemetryWorker.kt */
/* JADX INFO: loaded from: classes.dex */
public final class TelemetryWorker extends Worker implements Observer {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final a f5925o = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final CountDownLatch f5926n;

    /* JADX INFO: compiled from: TelemetryWorker.kt */
    public static final class a {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TelemetryWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        h.j(context, "context");
        h.j(workerParameters, "workerParams");
        this.f5926n = new CountDownLatch(1);
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.a h() {
        try {
            c cVar = c.f7932a;
            cVar.addObserver(this);
            if (c.f7945n) {
                this.f5926n.countDown();
            }
            b bVar = c.f7934c;
            if (bVar == null) {
                h.C("telemetryGatekeeper");
                throw null;
            }
            if (!bVar.a()) {
                cVar.a().d();
                return new ListenableWorker.a.c();
            }
            this.f5926n.await(5L, TimeUnit.SECONDS);
            j();
            Iterator it = ((ArrayList) i()).iterator();
            while (it.hasNext()) {
                k((List) it.next());
            }
            if (((ArrayList) i()).isEmpty()) {
                Context context = this.f3023h;
                h.i(context, "applicationContext");
                String strB = c.f7932a.b();
                k kVarA = k.a(context);
                Objects.requireNonNull(kVarA);
                ((w1.b) kVarA.f9856d).a(new u1.b(kVarA, strB, true));
            }
            return new ListenableWorker.a.c();
        } catch (Throwable unused) {
            return new ListenableWorker.a.C0043a();
        }
    }

    public final List<List<kb.a>> i() {
        ArrayList arrayList = new ArrayList();
        ib.a aVarR = c.f7932a.a().r();
        List<kb.a> listC = aVarR.c();
        boolean z10 = true;
        while (z10) {
            z10 = listC.size() == 100;
            ArrayList arrayList2 = new ArrayList(j.T(listC, 10));
            for (kb.a aVar : listC) {
                arrayList2.add(kb.a.a(aVar, true, true, aVar.f9782q + 1, 147455));
            }
            Object[] array = arrayList2.toArray(new kb.a[0]);
            h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            kb.a[] aVarArr = (kb.a[]) array;
            aVarR.f((kb.a[]) Arrays.copyOf(aVarArr, aVarArr.length));
            arrayList.add(arrayList2);
            listC = aVarR.b();
        }
        return arrayList;
    }

    public final void j() {
        ib.a aVarR = c.f7932a.a().r();
        List<kb.a> listD = aVarR.d();
        ArrayList arrayList = new ArrayList(j.T(listD, 10));
        Iterator<T> it = listD.iterator();
        while (it.hasNext()) {
            arrayList.add(kb.a.a((kb.a) it.next(), false, false, 0, 212991));
        }
        Object[] array = arrayList.toArray(new kb.a[0]);
        h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        kb.a[] aVarArr = (kb.a[]) array;
        aVarR.f((kb.a[]) Arrays.copyOf(aVarArr, aVarArr.length));
    }

    public final boolean k(List<kb.a> list) {
        boolean zIsSuccessful;
        ib.a aVarR = c.f7932a.a().r();
        lb.c cVar = lb.c.f10235a;
        h.j(list, "telemetryInfo");
        if (list.isEmpty()) {
            zIsSuccessful = true;
        } else {
            try {
                OkHttpClient okHttpClient = (OkHttpClient) lb.c.f10236b.getValue();
                Request.Builder builderAddHeader = new Request.Builder().url("https://insights-collector.newrelic.com/v1/accounts/1015810/events").addHeader(Constants.Network.CONTENT_TYPE_HEADER, Constants.Network.ContentType.JSON);
                String str = c.f7943l;
                if (str == null) {
                    h.C("apiKey");
                    throw null;
                }
                Request.Builder builderPost = builderAddHeader.addHeader("X-Insert-Key", str).post(RequestBody.Companion.create(jb.a.a(list), MediaType.Companion.parse("application/json; charset=utf-8")));
                Request requestBuild = !(builderPost instanceof Request.Builder) ? builderPost.build() : OkHttp3Instrumentation.build(builderPost);
                zIsSuccessful = (!(okHttpClient instanceof OkHttpClient) ? okHttpClient.newCall(requestBuild) : OkHttp3Instrumentation.newCall(okHttpClient, requestBuild)).execute().isSuccessful();
            } catch (Throwable unused) {
                zIsSuccessful = false;
            }
        }
        if (zIsSuccessful) {
            Object[] array = list.toArray(new kb.a[0]);
            h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            kb.a[] aVarArr = (kb.a[]) array;
            aVarR.a((kb.a[]) Arrays.copyOf(aVarArr, aVarArr.length));
            return true;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((kb.a) obj).f9782q > 3) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : list) {
            if (((kb.a) obj2).f9782q <= 3) {
                arrayList2.add(obj2);
            }
        }
        ArrayList arrayList3 = new ArrayList(j.T(arrayList2, 10));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList3.add(kb.a.a((kb.a) it.next(), false, false, 0, 212991));
        }
        Object[] array2 = arrayList3.toArray(new kb.a[0]);
        h.h(array2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        kb.a[] aVarArr2 = (kb.a[]) array2;
        aVarR.f((kb.a[]) Arrays.copyOf(aVarArr2, aVarArr2.length));
        Object[] array3 = arrayList.toArray(new kb.a[0]);
        h.h(array3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        kb.a[] aVarArr3 = (kb.a[]) array3;
        aVarR.a((kb.a[]) Arrays.copyOf(aVarArr3, aVarArr3.length));
        return false;
    }

    @Override // java.util.Observer
    public final void update(Observable observable, Object obj) {
        h.j(observable, "o");
        h.j(obj, "arg");
        if (observable instanceof c) {
            if (c.f7945n) {
                this.f5926n.countDown();
            }
        }
    }
}
