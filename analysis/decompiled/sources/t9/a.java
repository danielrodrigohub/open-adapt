package t9;

import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.Shoe;
import p4.h;

/* JADX INFO: compiled from: SimpleAdaptConnectionState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public d f15567a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public d f15568b;

    /* JADX INFO: renamed from: t9.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: SimpleAdaptConnectionState.kt */
    public /* synthetic */ class C0267a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15569a;

        static {
            int[] iArr = new int[Shoe.values().length];
            iArr[Shoe.LEFT.ordinal()] = 1;
            iArr[Shoe.RIGHT.ordinal()] = 2;
            iArr[Shoe.BOTH.ordinal()] = 3;
            f15569a = iArr;
        }
    }

    public a() {
        d dVar = d.DISCONNECTED;
        this.f15567a = dVar;
        this.f15568b = dVar;
    }

    public final boolean a() {
        return this.f15567a.b() && this.f15568b.b();
    }

    public final void b(AdaptConnectionStatusResult adaptConnectionStatusResult) {
        h.j(adaptConnectionStatusResult, "result");
        int i10 = C0267a.f15569a[adaptConnectionStatusResult.getShoe().ordinal()];
        if (i10 == 1) {
            this.f15567a = g7.c.e(adaptConnectionStatusResult);
            return;
        }
        if (i10 == 2) {
            this.f15568b = g7.c.e(adaptConnectionStatusResult);
        } else {
            if (i10 != 3) {
                return;
            }
            this.f15567a = g7.c.e(adaptConnectionStatusResult);
            this.f15568b = g7.c.e(adaptConnectionStatusResult);
        }
    }
}
