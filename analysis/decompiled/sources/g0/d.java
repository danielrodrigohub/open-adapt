package g0;

import java.util.Comparator;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Comparator {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ d f7488i = new d(0);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ d f7489j = new d(1);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f7490h;

    public /* synthetic */ d(int i10) {
        this.f7490h = i10;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int length;
        int length2;
        switch (this.f7490h) {
            case 0:
                byte[] bArr = (byte[]) obj;
                byte[] bArr2 = (byte[]) obj2;
                if (bArr.length == bArr2.length) {
                    for (int i10 = 0; i10 < bArr.length; i10++) {
                        if (bArr[i10] != bArr2[i10]) {
                            length = bArr[i10];
                            length2 = bArr2[i10];
                        }
                    }
                    return 0;
                }
                length = bArr.length;
                length2 = bArr2.length;
                return length - length2;
            default:
                return j5.i.h.j((j5.i.h) obj, (j5.i.h) obj2);
        }
    }
}
