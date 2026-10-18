package n3;

import android.os.Bundle;
import android.util.SparseBooleanArray;
import java.util.ArrayList;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class n1 implements h.a, m5.o.b, s3.l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ n1 f11551b = new n1();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ n1 f11552c = new n1();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ n1 f11553d = new n1();

    @Override // m5.o.b
    public final void a(Object obj, m5.j jVar) {
    }

    @Override // s3.l
    public final s3.h[] c() {
        return new s3.h[]{new t3.a()};
    }

    @Override // n3.h.a
    public final h d(Bundle bundle) {
        o1.a aVar = o1.a.f11600i;
        ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(Integer.toString(0, 36));
        if (integerArrayList == null) {
            return o1.a.f11600i;
        }
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        for (int i10 = 0; i10 < integerArrayList.size(); i10++) {
            sparseBooleanArray.append(integerArrayList.get(i10).intValue(), true);
        }
        return new o1.a(new m5.j(sparseBooleanArray));
    }
}
