package j5;

import java.util.Comparator;
import u6.o0;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f implements Comparator {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ f f9305i = new f(0);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ f f9306j = new f(1);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ f f9307k = new f(2);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f9308h;

    public /* synthetic */ f(int i10) {
        this.f9308h = i10;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f9308h) {
            case 0:
                o0<Integer> o0Var = i.f9315i;
                return 0;
            case 1:
                return i.h.j((i.h) obj, (i.h) obj2);
            default:
                com.google.android.exoplayer2.ui.e.c cVar = (com.google.android.exoplayer2.ui.e.c) obj;
                com.google.android.exoplayer2.ui.e.c cVar2 = (com.google.android.exoplayer2.ui.e.c) obj2;
                int iCompare = Integer.compare(cVar2.f4934a, cVar.f4934a);
                if (iCompare != 0) {
                    return iCompare;
                }
                int iCompareTo = cVar2.f4936c.compareTo(cVar.f4936c);
                return iCompareTo != 0 ? iCompareTo : cVar2.f4937d.compareTo(cVar.f4937d);
        }
    }
}
