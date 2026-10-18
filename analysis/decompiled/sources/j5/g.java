package j5;

import java.util.Comparator;
import l5.h0;
import u6.o0;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g implements Comparator {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ g f9309i = new g(0);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ g f9310j = new g(1);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ g f9311k = new g(2);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final /* synthetic */ g f9312l = new g(3);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f9313h;

    public /* synthetic */ g(int i10) {
        this.f9313h = i10;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f9313h) {
            case 0:
                Integer num = (Integer) obj;
                Integer num2 = (Integer) obj2;
                o0<Integer> o0Var = i.f9315i;
                if (num.intValue() == -1) {
                    return num2.intValue() == -1 ? 0 : -1;
                }
                if (num2.intValue() == -1) {
                    return 1;
                }
                return num.intValue() - num2.intValue();
            case 1:
                return i.h.j((i.h) obj, (i.h) obj2);
            case 2:
                com.google.android.exoplayer2.ui.e.c cVar = (com.google.android.exoplayer2.ui.e.c) obj;
                com.google.android.exoplayer2.ui.e.c cVar2 = (com.google.android.exoplayer2.ui.e.c) obj2;
                int iCompare = Integer.compare(cVar2.f4935b, cVar.f4935b);
                if (iCompare != 0) {
                    return iCompare;
                }
                int iCompareTo = cVar.f4936c.compareTo(cVar2.f4936c);
                return iCompareTo != 0 ? iCompareTo : cVar.f4937d.compareTo(cVar2.f4937d);
            default:
                Comparator<h0.a> comparator = h0.f10035h;
                return Float.compare(((h0.a) obj).f10046c, ((h0.a) obj2).f10046c);
        }
    }
}
