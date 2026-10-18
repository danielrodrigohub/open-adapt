package r2;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: ResourceCacheGenerator.java */
/* JADX INFO: loaded from: classes.dex */
public final class x implements h, com.bumptech.glide.load.data.d.a<Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final h.a f14390h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final i<?> f14391i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f14392j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f14393k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public p2.f f14394l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public List<v2.n<File, ?>> f14395m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f14396n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public volatile v2.n.a<?> f14397o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public File f14398p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public y f14399q;

    public x(i<?> iVar, h.a aVar) {
        this.f14391i = iVar;
        this.f14390h = aVar;
    }

    @Override // r2.h
    public final boolean a() {
        ArrayList arrayList = (ArrayList) this.f14391i.a();
        if (arrayList.isEmpty()) {
            return false;
        }
        List<Class<?>> listE = this.f14391i.e();
        if (listE.isEmpty()) {
            if (File.class.equals(this.f14391i.f14262k)) {
                return false;
            }
            throw new IllegalStateException("Failed to find any load path from " + this.f14391i.f14255d.getClass() + " to " + this.f14391i.f14262k);
        }
        while (true) {
            List<v2.n<File, ?>> list = this.f14395m;
            if (list != null) {
                if (this.f14396n < list.size()) {
                    this.f14397o = null;
                    boolean z10 = false;
                    while (!z10) {
                        if (!(this.f14396n < this.f14395m.size())) {
                            break;
                        }
                        List<v2.n<File, ?>> list2 = this.f14395m;
                        int i10 = this.f14396n;
                        this.f14396n = i10 + 1;
                        v2.n<File, ?> nVar = list2.get(i10);
                        File file = this.f14398p;
                        i<?> iVar = this.f14391i;
                        this.f14397o = nVar.a(file, iVar.f14256e, iVar.f14257f, iVar.f14260i);
                        if (this.f14397o != null && this.f14391i.h(this.f14397o.f16176c.a())) {
                            this.f14397o.f16176c.f(this.f14391i.f14266o, this);
                            z10 = true;
                        }
                    }
                    return z10;
                }
            }
            int i11 = this.f14393k + 1;
            this.f14393k = i11;
            if (i11 >= listE.size()) {
                int i12 = this.f14392j + 1;
                this.f14392j = i12;
                if (i12 >= arrayList.size()) {
                    return false;
                }
                this.f14393k = 0;
            }
            p2.f fVar = (p2.f) arrayList.get(this.f14392j);
            Class<?> cls = listE.get(this.f14393k);
            p2.l<Z> lVarG = this.f14391i.g(cls);
            i<?> iVar2 = this.f14391i;
            this.f14399q = new y(iVar2.f14254c.f4445a, fVar, iVar2.f14265n, iVar2.f14256e, iVar2.f14257f, lVarG, cls, iVar2.f14260i);
            File fileA = iVar2.b().a(this.f14399q);
            this.f14398p = fileA;
            if (fileA != null) {
                this.f14394l = fVar;
                this.f14395m = this.f14391i.f14254c.f4446b.f(fileA);
                this.f14396n = 0;
            }
        }
    }

    @Override // com.bumptech.glide.load.data.d.a
    public final void c(Exception exc) {
        this.f14390h.g(this.f14399q, exc, this.f14397o.f16176c, p2.a.RESOURCE_DISK_CACHE);
    }

    @Override // r2.h
    public final void cancel() {
        v2.n.a<?> aVar = this.f14397o;
        if (aVar != null) {
            aVar.f16176c.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.d.a
    public final void d(Object obj) {
        this.f14390h.i(this.f14394l, obj, this.f14397o.f16176c, p2.a.RESOURCE_DISK_CACHE, this.f14399q);
    }
}
