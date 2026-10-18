package u4;

import java.util.List;

/* JADX INFO: compiled from: DefaultHlsExtractorFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f15739b = {8, 13, 11, 2, 0, 1, 7};

    public static void a(int i10, List<Integer> list) {
        int[] iArr = f15739b;
        int i11 = 0;
        while (true) {
            if (i11 >= 7) {
                i11 = -1;
                break;
            } else if (iArr[i11] == i10) {
                break;
            } else {
                i11++;
            }
        }
        if (i11 == -1 || list.contains(Integer.valueOf(i10))) {
            return;
        }
        list.add(Integer.valueOf(i10));
    }
}
