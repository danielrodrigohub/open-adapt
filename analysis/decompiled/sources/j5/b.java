package j5;

import java.util.Comparator;
import n3.s0;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Comparator {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ b f9290i = new b(0);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ b f9291j = new b(1);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f9292h;

    public /* synthetic */ b(int i10) {
        this.f9292h = i10;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f9292h) {
            case 0:
                return ((s0) obj2).f11683o - ((s0) obj).f11683o;
            default:
                return i.h.i((i.h) obj, (i.h) obj2);
        }
    }
}
