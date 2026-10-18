package s4;

import j5.i;
import java.util.Comparator;
import java.util.List;
import l5.h0;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a implements Comparator {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ a f15108i = new a(0);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ a f15109j = new a(1);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ a f15110k = new a(2);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final /* synthetic */ a f15111l = new a(3);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f15112h;

    public /* synthetic */ a(int i10) {
        this.f15112h = i10;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f15112h) {
            case 0:
                t4.b bVar = (t4.b) obj;
                t4.b bVar2 = (t4.b) obj2;
                int iCompare = Integer.compare(bVar.f15440c, bVar2.f15440c);
                return iCompare != 0 ? iCompare : bVar.f15439b.compareTo(bVar2.f15439b);
            case 1:
                return ((i.f) ((List) obj).get(0)).compareTo((i.f) ((List) obj2).get(0));
            case 2:
                return i.h.i((i.h) obj, (i.h) obj2);
            default:
                Comparator<h0.a> comparator = h0.f10035h;
                return ((h0.a) obj).f10044a - ((h0.a) obj2).f10044a;
        }
    }
}
