package s9;

import com.nike.adapt.BigfootApplication;
import com.nike.adapt.adk.AdaptMarshaller;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.adk.model.AdaptAnimation;
import com.nike.adapt.adk.model.AdaptCustomAnimation;
import com.nike.adapt.adk.model.AdaptDeviceColor;
import com.nike.adapt.adk.model.AdaptShoeColor;
import com.nike.adapt.analytics.TrackManager;
import okhttp3.internal.http.HttpStatusCodesKt;
import p8.h0;
import p8.i0;

/* JADX INFO: compiled from: AnimationQueueTracker.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final fd.d f15170a = androidx.lifecycle.o.w(3, C0260a.f15173h);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f15171b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f15172c;

    /* JADX INFO: renamed from: s9.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AnimationQueueTracker.kt */
    public static final class C0260a extends rd.o implements qd.a<h8.a> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final C0260a f15173h = new C0260a();

        public C0260a() {
            super(0);
        }

        @Override // qd.a
        public final h8.a invoke() {
            int i10 = h8.a.f8296a;
            return h8.c.f8298b;
        }
    }

    public final h8.a a() {
        return (h8.a) this.f15170a.getValue();
    }

    public final void b() {
        this.f15171b = true;
        this.f15172c = true;
    }

    public final boolean c(Shoe shoe, x8.s sVar, IDeviceController iDeviceController) {
        Shoe shoe2;
        p4.h.j(shoe, "shoe");
        p4.h.j(sVar, "effectsHelper");
        boolean z10 = this.f15171b;
        if ((z10 || this.f15172c) ? false : true) {
            return false;
        }
        if (z10 && shoe.isLeft()) {
            this.f15171b = false;
            shoe2 = Shoe.LEFT;
        } else if (this.f15172c && shoe.isRight()) {
            this.f15172c = false;
            shoe2 = Shoe.RIGHT;
        } else {
            shoe2 = null;
        }
        if (shoe2 == null) {
            return false;
        }
        AdaptShoeColor adaptShoeColorS = a().S();
        int iJ = a().j() * 60;
        int iA = q.g.a(g.f15195a.b());
        if (iA != 0) {
            if (iA != 1) {
                return false;
            }
            AdaptMarshaller.AdaptPreset leftAdaptPreset = shoe2.isLeft() ? adaptShoeColorS.getLeftAdaptPreset() : adaptShoeColorS.getRightAdaptPreset();
            sVar.f18005f = sVar.b();
            iDeviceController.requestTo(shoe2, new h0(new AdaptAnimation(new AdaptDeviceColor(leftAdaptPreset, null, 2, null), HttpStatusCodesKt.HTTP_INTERNAL_SERVER_ERROR, 1000, 2750, 1000, HttpStatusCodesKt.HTTP_INTERNAL_SERVER_ERROR, sVar.c(iJ))));
            TrackManager.INSTANCE.pulsingLightsTurnedOn();
            return true;
        }
        if (a().j() < 0) {
            a().c0(60);
        }
        sVar.f18005f = sVar.b();
        v7.c pendingLightEffect = InMemoryCache.INSTANCE.getPendingLightEffect();
        if (pendingLightEffect == null) {
            return true;
        }
        p4.h.j(adaptShoeColorS, "shoeColor");
        y8.i.a aVar = new y8.i.a(pendingLightEffect, false);
        y8.b bVar = y8.b.f18683a;
        AdaptCustomAnimation adaptCustomAnimationA = bVar.a(BigfootApplication.f5638p.a(), bVar.d(aVar, adaptShoeColorS));
        AdaptCustomAnimation adaptCustomAnimationCopy$default = adaptCustomAnimationA != null ? AdaptCustomAnimation.copy$default(adaptCustomAnimationA, aVar.f18704a.a(), false, null, false, 0, 0, 62, null) : null;
        if (adaptCustomAnimationCopy$default == null) {
            return true;
        }
        iDeviceController.requestTo(shoe2, new i0(adaptCustomAnimationCopy$default, sVar.c(iJ)));
        return true;
    }
}
