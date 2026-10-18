package bd;

import fd.o;
import gd.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.SerializationStrategy;
import p4.h;

/* JADX INFO: compiled from: FileDataStoreImpl.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d implements zc.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f3791a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final cd.e f3792b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<yc.a.b> f3793c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final dd.e f3794d;

    /* JADX WARN: Multi-variable type inference failed */
    public d(a aVar, cd.e eVar, List<? extends yc.a.b> list) {
        h.j(aVar, "host");
        h.j(list, "options");
        this.f3791a = aVar;
        this.f3792b = eVar;
        this.f3793c = list;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (next != null ? next instanceof dd.e.c : true) {
                arrayList.add(next);
            }
        }
        Object objA0 = n.a0(arrayList);
        if (objA0 == null) {
            Objects.requireNonNull(dd.e.Companion);
            objA0 = dd.e.f6180i;
        }
        this.f3794d = (dd.e) objA0;
    }

    @Override // zc.b
    public final Object c(Object obj, SerializationStrategy serializationStrategy, jd.d dVar) {
        Object objD = this.f3791a.d(this.f3793c, new c(this, "KEY_1", serializationStrategy, obj, null), dVar);
        return objD == kd.a.COROUTINE_SUSPENDED ? objD : o.f7408a;
    }

    @Override // zc.b
    public final Object e(DeserializationStrategy deserializationStrategy, jd.d dVar) {
        return this.f3791a.d(this.f3793c, new b(this, deserializationStrategy, "KEY_1", null), dVar);
    }
}
