package b2;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: MaskKeyframeAnimation.java */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ArrayList f3190a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f3191b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f3192c;

    public static int a(byte[] bArr) {
        if (bArr == null || bArr.length < 1) {
            return -1;
        }
        return bArr[0] & 63;
    }

    public static boolean b(byte b10) {
        return (b10 & 64) != 0;
    }

    public h(List list) {
        this.f3192c = list;
        this.f3190a = new ArrayList(list.size());
        this.f3191b = new ArrayList(list.size());
        for (int i10 = 0; i10 < list.size(); i10++) {
            this.f3190a.add(((f2.f) list.get(i10)).f6991b.a());
            ((List) this.f3191b).add(((f2.f) list.get(i10)).f6992c.a());
        }
    }
}
