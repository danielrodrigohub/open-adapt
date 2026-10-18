package gd;

import java.util.Iterator;

/* JADX INFO: compiled from: _Arrays.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h extends rd.o implements qd.a<Iterator<Object>> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object[] f8067h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(Object[] objArr) {
        super(0);
        this.f8067h = objArr;
    }

    @Override // qd.a
    public final Iterator<Object> invoke() {
        return p4.h.v(this.f8067h);
    }
}
