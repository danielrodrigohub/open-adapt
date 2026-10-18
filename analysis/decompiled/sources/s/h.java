package s;

import java.util.ArrayList;
import t.o;

/* JADX INFO: compiled from: HelperWidget.java */
/* JADX INFO: loaded from: classes.dex */
public class h extends d implements g {

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public d[] f14909r0 = new d[4];

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public int f14910s0 = 0;

    public final void T(ArrayList<o> arrayList, int i10, o oVar) {
        for (int i11 = 0; i11 < this.f14910s0; i11++) {
            oVar.a(this.f14909r0[i11]);
        }
        for (int i12 = 0; i12 < this.f14910s0; i12++) {
            t.i.a(this.f14909r0[i12], i10, arrayList, oVar);
        }
    }
}
