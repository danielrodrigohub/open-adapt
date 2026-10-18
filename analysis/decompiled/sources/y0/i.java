package y0;

import android.os.Bundle;
import java.util.Objects;
import n3.a1;
import n3.y0;
import n3.y1;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class i implements n3.h.a, s3.l {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ i f18231c = new i(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ i f18232d = new i(2);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ i f18233e = new i(3);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f18234b;

    public /* synthetic */ i(int i10) {
        this.f18234b = i10;
    }

    @Override // s3.l
    public final s3.h[] c() {
        return new s3.h[]{new w3.b()};
    }

    @Override // n3.h.a
    public final n3.h d(Bundle bundle) {
        switch (this.f18234b) {
            case 1:
                String string = bundle.getString(y0.d(0), "");
                Objects.requireNonNull(string);
                Bundle bundle2 = bundle.getBundle(y0.d(1));
                y0.f fVar = bundle2 == null ? y0.f.f11793m : (y0.f) y0.f.f11794n.d(bundle2);
                Bundle bundle3 = bundle.getBundle(y0.d(2));
                a1 a1Var = bundle3 == null ? a1.N : (a1) a1.O.d(bundle3);
                Bundle bundle4 = bundle.getBundle(y0.d(3));
                y0.d dVar = bundle4 == null ? y0.d.f11776n : (y0.d) y0.c.f11765m.d(bundle4);
                Bundle bundle5 = bundle.getBundle(y0.d(4));
                return new y0(string, dVar, fVar, a1Var, bundle5 == null ? y0.i.f11812k : (y0.i) y0.i.f11813l.d(bundle5));
            default:
                m5.a.a(bundle.getInt(y1.b(0), -1) == 2);
                int i10 = bundle.getInt(y1.b(1), 5);
                float f10 = bundle.getFloat(y1.b(2), -1.0f);
                return f10 == -1.0f ? new y1(i10) : new y1(i10, f10);
        }
    }
}
