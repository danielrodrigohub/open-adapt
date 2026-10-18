package r7;

import android.content.Intent;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.adk.model.AdaptDeviceColor;
import com.nike.adapt.adk.model.AdaptShoeColor;
import java.io.Serializable;
import p8.c0;
import p8.d0;

/* JADX INFO: compiled from: DeepLinkActions.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static IDeviceController f14669b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static r7.a f14673f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static boolean f14674g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static Shoe f14675h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static AdaptShoeColor f14676i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static Integer f14677j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f14668a = new g();

    /* JADX INFO: Incorrect field signature: Lqd/a<Lfd/o;>; */
    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static rd.o f14670c = c.f14681h;

    /* JADX INFO: Incorrect field signature: Lqd/a<Lfd/o;>; */
    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static rd.o f14671d = d.f14682h;

    /* JADX INFO: Incorrect field signature: Lqd/a<Lfd/o;>; */
    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static rd.o f14672e = b.f14680h;

    /* JADX INFO: compiled from: DeepLinkActions.kt */
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f14678a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f14679b;

        static {
            int[] iArr = new int[r7.a.values().length];
            iArr[r7.a.f14652k.ordinal()] = 1;
            iArr[r7.a.f14656o.ordinal()] = 2;
            iArr[r7.a.f14653l.ordinal()] = 3;
            iArr[r7.a.f14654m.ordinal()] = 4;
            iArr[r7.a.f14655n.ordinal()] = 5;
            f14678a = iArr;
            int[] iArr2 = new int[Shoe.values().length];
            iArr2[Shoe.LEFT.ordinal()] = 1;
            iArr2[Shoe.RIGHT.ordinal()] = 2;
            iArr2[Shoe.BOTH.ordinal()] = 3;
            f14679b = iArr2;
        }
    }

    /* JADX INFO: compiled from: DeepLinkActions.kt */
    public static final class b extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final b f14680h = new b();

        public b() {
            super(0);
        }

        @Override // qd.a
        public final /* bridge */ /* synthetic */ fd.o invoke() {
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: DeepLinkActions.kt */
    public static final class c extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final c f14681h = new c();

        public c() {
            super(0);
        }

        @Override // qd.a
        public final /* bridge */ /* synthetic */ fd.o invoke() {
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: DeepLinkActions.kt */
    public static final class d extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final d f14682h = new d();

        public d() {
            super(0);
        }

        @Override // qd.a
        public final /* bridge */ /* synthetic */ fd.o invoke() {
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: DeepLinkActions.kt */
    public static final class e extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ p8.l f14683h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(p8.l lVar) {
            super(0);
            this.f14683h = lVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            IDeviceController iDeviceController = g.f14669b;
            if (iDeviceController != null) {
                iDeviceController.requestTo(Shoe.LEFT, this.f14683h);
                return fd.o.f7408a;
            }
            p4.h.C("deviceController");
            throw null;
        }
    }

    /* JADX INFO: compiled from: DeepLinkActions.kt */
    public static final class f extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ p8.l f14684h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(p8.l lVar) {
            super(0);
            this.f14684h = lVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            IDeviceController iDeviceController = g.f14669b;
            if (iDeviceController != null) {
                iDeviceController.requestTo(Shoe.RIGHT, this.f14684h);
                return fd.o.f7408a;
            }
            p4.h.C("deviceController");
            throw null;
        }
    }

    /* JADX INFO: renamed from: r7.g$g, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DeepLinkActions.kt */
    public static final class C0252g extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ p8.l f14685h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ p8.l f14686i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0252g(p8.l lVar, p8.l lVar2) {
            super(0);
            this.f14685h = lVar;
            this.f14686i = lVar2;
        }

        @Override // qd.a
        public final fd.o invoke() {
            IDeviceController iDeviceController = g.f14669b;
            if (iDeviceController == null) {
                p4.h.C("deviceController");
                throw null;
            }
            iDeviceController.requestTo(Shoe.LEFT, this.f14685h);
            IDeviceController iDeviceController2 = g.f14669b;
            if (iDeviceController2 != null) {
                iDeviceController2.requestTo(Shoe.RIGHT, this.f14686i);
                return fd.o.f7408a;
            }
            p4.h.C("deviceController");
            throw null;
        }
    }

    public final void a(p8.l lVar, p8.l lVar2) {
        Shoe shoe = f14675h;
        int i10 = shoe == null ? -1 : a.f14679b[shoe.ordinal()];
        if (i10 == 1) {
            f14670c = new e(lVar);
        } else if (i10 == 2) {
            f14671d = new f(lVar2);
        } else {
            if (i10 != 3) {
                return;
            }
            f14672e = new C0252g(lVar, lVar2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:49:0x006c  */
    /* JADX WARN: Type inference failed for: r3v14, types: [qd.a, rd.o] */
    /* JADX WARN: Type inference failed for: r3v17, types: [qd.a, rd.o] */
    /* JADX WARN: Type inference failed for: r3v20, types: [qd.a, rd.o] */
    public final void b(boolean z10, boolean z11) {
        Shoe shoe;
        boolean z12;
        if (f14674g && (shoe = f14675h) != null) {
            if (z10 && shoe.isRight()) {
                f14671d.invoke();
            }
            if (z11 && shoe.isLeft()) {
                f14670c.invoke();
            }
            if (z10 && z11 && shoe.isBoth()) {
                f14672e.invoke();
            }
            if (!(z10 && shoe.isRight())) {
                if (!(z11 && shoe.isLeft())) {
                    z12 = z10 && z11 && shoe.isBoth();
                }
            }
            f14674g = !z12;
        }
    }

    public final void c(boolean z10, boolean z11) {
        r7.a aVar = f14673f;
        int i10 = aVar == null ? -1 : a.f14678a[aVar.ordinal()];
        if (i10 == 1 || i10 == 2 || i10 == 3) {
            b(z10, z11);
        }
    }

    public final void d(Intent intent, IDeviceController iDeviceController) {
        f14669b = iDeviceController;
        Serializable serializableExtra = intent != null ? intent.getSerializableExtra("deep_link_action") : null;
        f14673f = serializableExtra instanceof r7.a ? (r7.a) serializableExtra : null;
        Serializable serializableExtra2 = intent != null ? intent.getSerializableExtra("deep_link_unlace_shoe_side") : null;
        f14675h = serializableExtra2 instanceof Shoe ? (Shoe) serializableExtra2 : null;
        f14676i = intent != null ? (AdaptShoeColor) intent.getParcelableExtra("deep_link_change_lights_color") : null;
        f14677j = intent != null ? Integer.valueOf(intent.getIntExtra("deep_link_percent_position", 0)) : null;
        r7.a aVar = f14673f;
        if ((aVar == null || ((aVar == r7.a.f14652k || f14673f == r7.a.f14654m || f14673f == r7.a.f14655n) && f14675h == null) || ((f14673f == r7.a.f14653l && f14676i == null) || (f14673f == r7.a.f14656o && f14677j == null))) ? false : true) {
            f14674g = true;
            r7.a aVar2 = f14673f;
            int i10 = aVar2 == null ? -1 : a.f14678a[aVar2.ordinal()];
            if (i10 == 1) {
                a(new d0(0, 1), new d0(0, 1));
                return;
            }
            if (i10 == 2) {
                Integer num = f14677j;
                if (num != null) {
                    int iIntValue = num.intValue();
                    f14668a.a(new d0(iIntValue, 1), new d0(iIntValue, 1));
                }
                h8.c.f8298b.x();
                return;
            }
            if (i10 == 3) {
                AdaptShoeColor adaptShoeColor = f14676i;
                if (adaptShoeColor != null) {
                    f14668a.a(new p8.j(new AdaptDeviceColor(adaptShoeColor.getLeftAdaptPreset(), null, 2, null)), new p8.j(new AdaptDeviceColor(adaptShoeColor.getRightAdaptPreset(), null, 2, null)));
                    return;
                }
                return;
            }
            if (i10 == 4) {
                a(new c0(-5), new c0(-5));
            } else {
                if (i10 != 5) {
                    return;
                }
                a(new c0(5), new c0(5));
            }
        }
    }
}
