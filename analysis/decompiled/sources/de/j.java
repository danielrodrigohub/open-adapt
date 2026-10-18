package de;

import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: compiled from: FileMetadata.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f6243a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f6244b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a0 f6245c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Long f6246d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Long f6247e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Long f6248f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Long f6249g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Map<wd.b<?>, Object> f6250h;

    public j(boolean z10, boolean z11, a0 a0Var, Long l10, Long l11, Long l12, Long l13, Map<wd.b<?>, ? extends Object> map) {
        p4.h.j(map, "extras");
        this.f6243a = z10;
        this.f6244b = z11;
        this.f6245c = a0Var;
        this.f6246d = l10;
        this.f6247e = l11;
        this.f6248f = l12;
        this.f6249g = l13;
        this.f6250h = gd.z.E(map);
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.f6243a) {
            arrayList.add("isRegularFile");
        }
        if (this.f6244b) {
            arrayList.add("isDirectory");
        }
        if (this.f6246d != null) {
            StringBuilder sbC = a0.b.c("byteCount=");
            sbC.append(this.f6246d);
            arrayList.add(sbC.toString());
        }
        if (this.f6247e != null) {
            StringBuilder sbC2 = a0.b.c("createdAt=");
            sbC2.append(this.f6247e);
            arrayList.add(sbC2.toString());
        }
        if (this.f6248f != null) {
            StringBuilder sbC3 = a0.b.c("lastModifiedAt=");
            sbC3.append(this.f6248f);
            arrayList.add(sbC3.toString());
        }
        if (this.f6249g != null) {
            StringBuilder sbC4 = a0.b.c("lastAccessedAt=");
            sbC4.append(this.f6249g);
            arrayList.add(sbC4.toString());
        }
        if (!this.f6250h.isEmpty()) {
            StringBuilder sbC5 = a0.b.c("extras=");
            sbC5.append(this.f6250h);
            arrayList.add(sbC5.toString());
        }
        return gd.n.d0(arrayList, ", ", "FileMetadata(", ")", null, 56);
    }

    public /* synthetic */ j(boolean z10, boolean z11, a0 a0Var, Long l10, Long l11, Long l12, Long l13) {
        this(z10, z11, a0Var, l10, l11, l12, l13, gd.q.f8071h);
    }
}
