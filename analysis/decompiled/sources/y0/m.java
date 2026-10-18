package y0;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.regex.Pattern;
import n3.k1;
import u6.p0;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class m implements n3.h.a, s3.l, e4.r.f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ m f18248c = new m(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ m f18249d = new m(1);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ m f18250e = new m(2);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ m f18251f = new m(3);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ m f18252g = new m(4);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ m f18253h = new m(5);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ m f18254i = new m(6);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f18255b;

    public /* synthetic */ m(int i10) {
        this.f18255b = i10;
    }

    @Override // e4.r.f
    public final int a(Object obj) {
        Pattern pattern = e4.r.f6460a;
        String str = ((e4.n) obj).f6415a;
        if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
            return 1;
        }
        return (m5.g0.f10384a >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
    }

    @Override // s3.l
    public final s3.h[] c() {
        return new s3.h[]{new a4.e(0, null, null, Collections.emptyList())};
    }

    @Override // n3.h.a
    public final n3.h d(Bundle bundle) {
        u6.v<Object> vVarA;
        switch (this.f18255b) {
            case 1:
                return new k1(bundle);
            case 2:
            case 3:
            default:
                return new n5.b(bundle.getInt(n5.b.d(0), -1), bundle.getInt(n5.b.d(1), -1), bundle.getInt(n5.b.d(2), -1), bundle.getByteArray(n5.b.d(3)));
            case 4:
                z4.c cVar = z4.c.f19328i;
                ArrayList parcelableArrayList = bundle.getParcelableArrayList(Integer.toString(0, 36));
                if (parcelableArrayList == null) {
                    u6.a aVar = u6.v.f16002i;
                    vVarA = p0.f15967l;
                } else {
                    vVarA = m5.b.a(z4.a.f19293z, parcelableArrayList);
                }
                return new z4.c(vVarA);
            case 5:
                j5.i.c cVar2 = j5.i.c.X;
                return new j5.i.c(new j5.i.c.a(bundle));
        }
    }
}
