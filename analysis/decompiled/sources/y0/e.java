package y0;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.text.Layout;
import java.util.ArrayList;
import n3.c2;
import u6.p0;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class e implements n3.h.a, k4.g.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ e f18181c = new e(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ e f18182d = new e(2);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ e f18183e = new e(3);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ e f18184f = new e(4);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f18185b;

    public /* synthetic */ e(int i10) {
        this.f18185b = i10;
    }

    @Override // k4.g.a
    public final boolean a(int i10, int i11, int i12, int i13, int i14) {
        e eVar = z3.d.f19261u;
        return (i11 == 67 && i12 == 79 && i13 == 77 && (i14 == 77 || i10 == 2)) || (i11 == 77 && i12 == 76 && i13 == 76 && (i14 == 84 || i10 == 2));
    }

    @Override // n3.h.a
    public final n3.h d(Bundle bundle) {
        u6.v<Object> vVarA;
        float f10;
        int i10;
        float f11;
        int i11;
        int i12;
        boolean z10 = true;
        switch (this.f18185b) {
            case 1:
                c2 c2Var = c2.f11337i;
                ArrayList parcelableArrayList = bundle.getParcelableArrayList(Integer.toString(0, 36));
                if (parcelableArrayList == null) {
                    u6.a aVar = u6.v.f16002i;
                    vVarA = p0.f15967l;
                } else {
                    vVarA = m5.b.a(c2.a.f11339m, parcelableArrayList);
                }
                return new c2(vVarA);
            case 2:
            default:
                j5.q qVar = j5.q.H;
                return new j5.q(new j5.q.a(bundle));
            case 3:
                long j10 = bundle.getLong(q4.a.C0241a.d(0));
                int i13 = bundle.getInt(q4.a.C0241a.d(1), -1);
                ArrayList parcelableArrayList2 = bundle.getParcelableArrayList(q4.a.C0241a.d(2));
                int[] intArray = bundle.getIntArray(q4.a.C0241a.d(3));
                long[] longArray = bundle.getLongArray(q4.a.C0241a.d(4));
                return new q4.a.C0241a(j10, i13, intArray == null ? new int[0] : intArray, parcelableArrayList2 == null ? new Uri[0] : (Uri[]) parcelableArrayList2.toArray(new Uri[0]), longArray == null ? new long[0] : longArray, bundle.getLong(q4.a.C0241a.d(5)), bundle.getBoolean(q4.a.C0241a.d(6)));
            case 4:
                CharSequence charSequence = bundle.getCharSequence(z4.a.c(0));
                CharSequence charSequence2 = charSequence != null ? charSequence : null;
                Layout.Alignment alignment = (Layout.Alignment) bundle.getSerializable(z4.a.c(1));
                Layout.Alignment alignment2 = alignment != null ? alignment : null;
                Layout.Alignment alignment3 = (Layout.Alignment) bundle.getSerializable(z4.a.c(2));
                Layout.Alignment alignment4 = alignment3 != null ? alignment3 : null;
                Bitmap bitmap = (Bitmap) bundle.getParcelable(z4.a.c(3));
                Bitmap bitmap2 = bitmap != null ? bitmap : null;
                if (bundle.containsKey(z4.a.c(4)) && bundle.containsKey(z4.a.c(5))) {
                    f10 = bundle.getFloat(z4.a.c(4));
                    i10 = bundle.getInt(z4.a.c(5));
                } else {
                    f10 = -3.4028235E38f;
                    i10 = Integer.MIN_VALUE;
                }
                int i14 = bundle.containsKey(z4.a.c(6)) ? bundle.getInt(z4.a.c(6)) : Integer.MIN_VALUE;
                float f12 = bundle.containsKey(z4.a.c(7)) ? bundle.getFloat(z4.a.c(7)) : -3.4028235E38f;
                int i15 = bundle.containsKey(z4.a.c(8)) ? bundle.getInt(z4.a.c(8)) : Integer.MIN_VALUE;
                if (bundle.containsKey(z4.a.c(10)) && bundle.containsKey(z4.a.c(9))) {
                    f11 = bundle.getFloat(z4.a.c(10));
                    i11 = bundle.getInt(z4.a.c(9));
                } else {
                    f11 = -3.4028235E38f;
                    i11 = Integer.MIN_VALUE;
                }
                float f13 = bundle.containsKey(z4.a.c(11)) ? bundle.getFloat(z4.a.c(11)) : -3.4028235E38f;
                float f14 = bundle.containsKey(z4.a.c(12)) ? bundle.getFloat(z4.a.c(12)) : -3.4028235E38f;
                if (bundle.containsKey(z4.a.c(13))) {
                    i12 = bundle.getInt(z4.a.c(13));
                } else {
                    i12 = -16777216;
                    z10 = false;
                }
                return new z4.a(charSequence2, alignment2, alignment4, bitmap2, f10, i10, i14, f12, i15, i11, f11, f13, f14, !bundle.getBoolean(z4.a.c(14), false) ? false : z10, i12, bundle.containsKey(z4.a.c(15)) ? bundle.getInt(z4.a.c(15)) : Integer.MIN_VALUE, bundle.containsKey(z4.a.c(16)) ? bundle.getFloat(z4.a.c(16)) : 0.0f);
        }
    }
}
