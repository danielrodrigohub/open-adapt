package mb;

import android.content.Context;
import com.nike.android.telemetry.internal.database.TelemetryDatabase;
import com.nike.android.telemetry.internal.worker.TelemetryWorker;
import gd.j;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import k1.c;
import k1.m;
import k1.n;
import l1.g;
import l1.k;
import p4.h;
import rd.o;

/* JADX INFO: compiled from: TelemetryRepository.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a extends o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Context f10955h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ String f10956i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ List<kb.a> f10957j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ String f10958k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Context context, String str, List<kb.a> list, String str2) {
        super(0);
        this.f10955h = context;
        this.f10956i = str;
        this.f10957j = list;
        this.f10958k = str2;
    }

    @Override // qd.a
    public final fd.o invoke() {
        b bVar = b.f10959a;
        Object obj = b.f10960b;
        Context context = this.f10955h;
        String str = this.f10956i;
        List<kb.a> list = this.f10957j;
        String str2 = this.f10958k;
        synchronized (obj) {
            ib.a aVarR = TelemetryDatabase.f5921m.a(context, str).r();
            Object[] array = list.toArray(new kb.a[0]);
            h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            kb.a[] aVarArr = (kb.a[]) array;
            aVarR.e((kb.a[]) Arrays.copyOf(aVarArr, aVarArr.length));
            List<kb.a> listB = aVarR.b();
            if (listB.size() == 100) {
                ArrayList arrayList = new ArrayList(j.T(listB, 10));
                Iterator<T> it = listB.iterator();
                while (it.hasNext()) {
                    arrayList.add(kb.a.a((kb.a) it.next(), false, true, 0, 229375));
                }
                Object[] array2 = arrayList.toArray(new kb.a[0]);
                h.h(array2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                kb.a[] aVarArr2 = (kb.a[]) array2;
                aVarR.f((kb.a[]) Arrays.copyOf(aVarArr2, aVarArr2.length));
                h.j(str2, "tag");
                n.a aVar = new n.a(TelemetryWorker.class);
                c.a aVar2 = new c.a();
                aVar2.f9583b = m.NOT_ROAMING;
                aVar2.f9582a = false;
                aVar.f9620b.f15359j = new c(aVar2);
                n nVarA = aVar.a();
                k kVarA = k.a(context);
                Objects.requireNonNull(kVarA);
                new g(kVarA, str2, 3, Collections.singletonList(nVarA), null).c();
            }
        }
        return fd.o.f7408a;
    }
}
