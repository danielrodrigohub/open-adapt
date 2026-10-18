package r2;

import java.io.File;
import java.util.List;

/* JADX INFO: compiled from: DataCacheGenerator.java */
/* JADX INFO: loaded from: classes.dex */
public final class e implements h, com.bumptech.glide.load.data.d.a<Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List<p2.f> f14238h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final i<?> f14239i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final h.a f14240j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f14241k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public p2.f f14242l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public List<v2.n<File, ?>> f14243m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f14244n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public volatile v2.n.a<?> f14245o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public File f14246p;

    public e(i<?> iVar, h.a aVar) {
        List<p2.f> listA = iVar.a();
        this.f14241k = -1;
        this.f14238h = listA;
        this.f14239i = iVar;
        this.f14240j = aVar;
    }

    @Override // r2.h
    public final boolean a() {
        while (true) {
            List<v2.n<File, ?>> list = this.f14243m;
            if (list != null) {
                if (this.f14244n < list.size()) {
                    this.f14245o = null;
                    boolean z10 = false;
                    while (!z10) {
                        if (!(this.f14244n < this.f14243m.size())) {
                            break;
                        }
                        List<v2.n<File, ?>> list2 = this.f14243m;
                        int i10 = this.f14244n;
                        this.f14244n = i10 + 1;
                        v2.n<File, ?> nVar = list2.get(i10);
                        File file = this.f14246p;
                        i<?> iVar = this.f14239i;
                        this.f14245o = nVar.a(file, iVar.f14256e, iVar.f14257f, iVar.f14260i);
                        if (this.f14245o != null && this.f14239i.h(this.f14245o.f16176c.a())) {
                            this.f14245o.f16176c.f(this.f14239i.f14266o, this);
                            z10 = true;
                        }
                    }
                    return z10;
                }
            }
            int i11 = this.f14241k + 1;
            this.f14241k = i11;
            if (i11 >= this.f14238h.size()) {
                return false;
            }
            p2.f fVar = this.f14238h.get(this.f14241k);
            i<?> iVar2 = this.f14239i;
            File fileA = iVar2.b().a(new f(fVar, iVar2.f14265n));
            this.f14246p = fileA;
            if (fileA != null) {
                this.f14242l = fVar;
                this.f14243m = this.f14239i.f14254c.f4446b.f(fileA);
                this.f14244n = 0;
            }
        }
    }

    @Override // com.bumptech.glide.load.data.d.a
    public final void c(Exception exc) {
        this.f14240j.g(this.f14242l, exc, this.f14245o.f16176c, p2.a.DATA_DISK_CACHE);
    }

    @Override // r2.h
    public final void cancel() {
        v2.n.a<?> aVar = this.f14245o;
        if (aVar != null) {
            aVar.f16176c.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.d.a
    public final void d(Object obj) {
        this.f14240j.i(this.f14242l, obj, this.f14245o.f16176c, p2.a.DATA_DISK_CACHE, this.f14242l);
    }

    public e(List<p2.f> list, i<?> iVar, h.a aVar) {
        this.f14241k = -1;
        this.f14238h = list;
        this.f14239i = iVar;
        this.f14240j = aVar;
    }
}
