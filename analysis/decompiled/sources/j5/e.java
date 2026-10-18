package j5;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import ya.h0;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e implements Comparator {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ e f9302i = new e(0);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ e f9303j = new e(1);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f9304h;

    public /* synthetic */ e(int i10) {
        this.f9304h = i10;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f9304h) {
            case 0:
                return ((i.a) Collections.max((List) obj)).compareTo((i.a) Collections.max((List) obj2));
            default:
                h0<?> h0Var = (h0) obj2;
                p4.h.i(h0Var, "o2");
                return ((h0) obj).compareTo(h0Var);
        }
    }
}
