package z4;

import android.os.Bundle;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import u6.p0;
import u6.t;
import u6.v;

/* JADX INFO: compiled from: CueGroup.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements n3.h {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final c f19328i;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final v<a> f19329h;

    static {
        u6.a aVar = v.f16002i;
        f19328i = new c(p0.f15967l);
        y0.m mVar = y0.m.f18252g;
    }

    public c(List<a> list) {
        this.f19329h = v.s(list);
    }

    @Override // n3.h
    public final Bundle a() {
        Bundle bundle = new Bundle();
        String string = Integer.toString(0, 36);
        v<a> vVar = this.f19329h;
        u6.a aVar = v.f16002i;
        u6.h.b(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int i10 = 0;
        for (int i11 = 0; i11 < vVar.size(); i11++) {
            if (vVar.get(i11).f19297k == null) {
                a aVar2 = vVar.get(i11);
                Objects.requireNonNull(aVar2);
                int i12 = i10 + 1;
                if (objArrCopyOf.length < i12) {
                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, t.b.a(objArrCopyOf.length, i12));
                }
                objArrCopyOf[i10] = aVar2;
                i10 = i12;
            }
        }
        bundle.putParcelableArrayList(string, m5.b.b(v.q(objArrCopyOf, i10)));
        return bundle;
    }
}
