package q8;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.widget.ImageView;
import android.widget.TextView;
import com.nike.adapt.adk.model.Battery;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;
import okhttp3.internal.http.HttpStatusCodesKt;
import qd.l;
import qd.p;
import rd.o;

/* JADX INFO: compiled from: BatteryEventAnimator.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final q7.c f14116a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public q8.f f14117b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public q8.f f14118c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f14119d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f14120e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f14121f;

    /* JADX INFO: compiled from: BatteryEventAnimator.kt */
    @ld.e(c = "com.nike.adapt.ui.battery.BatteryEventAnimator", f = "BatteryEventAnimator.kt", l = {182, 183}, m = "animateBatteriesIntoView")
    public static final class a extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public d f14122h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public /* synthetic */ Object f14123i;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f14125k;

        public a(jd.d<? super a> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f14123i = obj;
            this.f14125k |= Integer.MIN_VALUE;
            return d.this.a(this);
        }
    }

    /* JADX INFO: compiled from: BatteryEventAnimator.kt */
    public static final class b extends o implements l<Integer, fd.o> {
        public b() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(Integer num) {
            d.this.f14121f = num.intValue();
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: BatteryEventAnimator.kt */
    public static final class c extends o implements l<Integer, fd.o> {
        public c() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(Integer num) {
            d.this.f14120e = num.intValue();
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: renamed from: q8.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: BatteryEventAnimator.kt */
    @ld.e(c = "com.nike.adapt.ui.battery.BatteryEventAnimator", f = "BatteryEventAnimator.kt", l = {176, 177}, m = "animateBatteryColor")
    public static final class C0243d extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public d f14128h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public /* synthetic */ Object f14129i;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f14131k;

        public C0243d(jd.d<? super C0243d> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f14129i = obj;
            this.f14131k |= Integer.MIN_VALUE;
            return d.this.b(this);
        }
    }

    /* JADX INFO: compiled from: BatteryEventAnimator.kt */
    @ld.e(c = "com.nike.adapt.ui.battery.BatteryEventAnimator", f = "BatteryEventAnimator.kt", l = {79}, m = "animateInCharging")
    public static final class e extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public d f14132h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public /* synthetic */ Object f14133i;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f14135k;

        public e(jd.d<? super e> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f14133i = obj;
            this.f14135k |= Integer.MIN_VALUE;
            return d.this.c(this);
        }
    }

    /* JADX INFO: compiled from: BatteryEventAnimator.kt */
    @ld.e(c = "com.nike.adapt.ui.battery.BatteryEventAnimator", f = "BatteryEventAnimator.kt", l = {74}, m = "animateOutCharging")
    public static final class f extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public d f14136h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public /* synthetic */ Object f14137i;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f14139k;

        public f(jd.d<? super f> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f14137i = obj;
            this.f14139k |= Integer.MIN_VALUE;
            return d.this.d(this);
        }
    }

    /* JADX INFO: compiled from: BatteryEventAnimator.kt */
    @ld.e(c = "com.nike.adapt.ui.battery.BatteryEventAnimator", f = "BatteryEventAnimator.kt", l = {119, 121, 124}, m = "displayInitialChargingView")
    public static final class g extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public d f14140h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public long f14141i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public /* synthetic */ Object f14142j;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f14144l;

        public g(jd.d<? super g> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f14142j = obj;
            this.f14144l |= Integer.MIN_VALUE;
            return d.this.f(this);
        }
    }

    /* JADX INFO: compiled from: BatteryEventAnimator.kt */
    @ld.e(c = "com.nike.adapt.ui.battery.BatteryEventAnimator$displayInitialChargingView$2", f = "BatteryEventAnimator.kt", l = {122}, m = "invokeSuspend")
    public static final class h extends ld.i implements p<CoroutineScope, jd.d<? super fd.o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f14145h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ long f14146i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(long j10, jd.d<? super h> dVar) {
            super(2, dVar);
            this.f14146i = j10;
        }

        @Override // ld.a
        public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
            return new h(this.f14146i, dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
            return ((h) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f14145h;
            if (i10 == 0) {
                d3.e.p(obj);
                long j10 = this.f14146i + ((long) 20);
                this.f14145h = 1;
                if (DelayKt.delay(j10, this) == aVar) {
                    return aVar;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: BatteryEventAnimator.kt */
    @ld.e(c = "com.nike.adapt.ui.battery.BatteryEventAnimator", f = "BatteryEventAnimator.kt", l = {168, 171, 172}, m = "insertChargingPad")
    public static final class i extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public d f14147h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public /* synthetic */ Object f14148i;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f14150k;

        public i(jd.d<? super i> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f14148i = obj;
            this.f14150k |= Integer.MIN_VALUE;
            return d.this.g(this);
        }
    }

    /* JADX INFO: compiled from: BatteryEventAnimator.kt */
    @ld.e(c = "com.nike.adapt.ui.battery.BatteryEventAnimator$insertChargingPad$2", f = "BatteryEventAnimator.kt", l = {169}, m = "invokeSuspend")
    public static final class j extends ld.i implements p<CoroutineScope, jd.d<? super fd.o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f14151h;

        public j(jd.d<? super j> dVar) {
            super(2, dVar);
        }

        @Override // ld.a
        public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
            return new j(dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
            return new j(dVar).invokeSuspend(fd.o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f14151h;
            if (i10 == 0) {
                d3.e.p(obj);
                this.f14151h = 1;
                if (DelayKt.delay(600L, this) == aVar) {
                    return aVar;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: BatteryEventAnimator.kt */
    @ld.e(c = "com.nike.adapt.ui.battery.BatteryEventAnimator", f = "BatteryEventAnimator.kt", l = {44, 53, 57, 58, 61, 64}, m = "performAnimation")
    public static final class k extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public d f14152h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f14153i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f14154j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f14155k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public /* synthetic */ Object f14156l;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f14158n;

        public k(jd.d<? super k> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f14156l = obj;
            this.f14158n |= Integer.MIN_VALUE;
            return d.this.i(null, this);
        }
    }

    public d(q7.c cVar) {
        this.f14116a = cVar;
        q8.f fVar = new q8.f(new q8.e(false, new Battery(0, null, 3, null)), new q8.e(true, new Battery(0, null, 3, null)));
        this.f14117b = fVar;
        this.f14118c = fVar;
        this.f14120e = -1;
        this.f14121f = -1;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(jd.d<? super fd.o> dVar) throws Throwable {
        a aVar;
        d dVar2;
        if (dVar instanceof a) {
            aVar = (a) dVar;
            int i10 = aVar.f14125k;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                aVar.f14125k = i10 - Integer.MIN_VALUE;
            } else {
                aVar = new a(dVar);
            }
        } else {
            aVar = new a(dVar);
        }
        Object obj = aVar.f14123i;
        kd.a aVar2 = kd.a.COROUTINE_SUSPENDED;
        int i11 = aVar.f14125k;
        if (i11 != 0) {
            if (i11 == 1) {
                dVar2 = aVar.f14122h;
                d3.e.p(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            return fd.o.f7408a;
        }
        d3.e.p(obj);
        q8.c cVar = q8.c.f14094a;
        ImageView imageView = this.f14116a.f13732c.f13724b;
        p4.h.i(imageView, "binding.batteryDetailsLeft.batteryDetailsIcon");
        q8.e eVar = this.f14118c.f14161h;
        q8.e eVar2 = this.f14117b.f14161h;
        b bVar = new b();
        aVar.f14122h = this;
        aVar.f14125k = 1;
        if (cVar.a(imageView, eVar, eVar2, bVar, aVar) == aVar2) {
            return aVar2;
        }
        dVar2 = this;
        q8.c cVar2 = q8.c.f14094a;
        ImageView imageView2 = dVar2.f14116a.f13733d.f13724b;
        p4.h.i(imageView2, "binding.batteryDetailsRight.batteryDetailsIcon");
        q8.e eVar3 = dVar2.f14118c.f14162i;
        q8.e eVar4 = dVar2.f14117b.f14162i;
        c cVar3 = dVar2.new c();
        aVar.f14122h = null;
        aVar.f14125k = 2;
        if (cVar2.a(imageView2, eVar3, eVar4, cVar3, aVar) == aVar2) {
            return aVar2;
        }
        return fd.o.f7408a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(jd.d<? super fd.o> dVar) throws Throwable {
        C0243d c0243d;
        d dVar2;
        if (dVar instanceof C0243d) {
            c0243d = (C0243d) dVar;
            int i10 = c0243d.f14131k;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                c0243d.f14131k = i10 - Integer.MIN_VALUE;
            } else {
                c0243d = new C0243d(dVar);
            }
        } else {
            c0243d = new C0243d(dVar);
        }
        Object obj = c0243d.f14129i;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i11 = c0243d.f14131k;
        if (i11 != 0) {
            if (i11 == 1) {
                dVar2 = c0243d.f14128h;
                d3.e.p(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            return fd.o.f7408a;
        }
        d3.e.p(obj);
        q8.c cVar = q8.c.f14094a;
        ImageView imageView = this.f14116a.f13732c.f13724b;
        p4.h.i(imageView, "binding.batteryDetailsLeft.batteryDetailsIcon");
        q8.e eVar = this.f14118c.f14161h;
        int i12 = this.f14121f;
        c0243d.f14128h = this;
        c0243d.f14131k = 1;
        if (cVar.b(imageView, eVar, i12, c0243d) == aVar) {
            return aVar;
        }
        dVar2 = this;
        q8.c cVar2 = q8.c.f14094a;
        ImageView imageView2 = dVar2.f14116a.f13733d.f13724b;
        p4.h.i(imageView2, "binding.batteryDetailsRight.batteryDetailsIcon");
        q8.e eVar2 = dVar2.f14118c.f14162i;
        int i13 = dVar2.f14120e;
        c0243d.f14128h = null;
        c0243d.f14131k = 2;
        if (cVar2.b(imageView2, eVar2, i13, c0243d) == aVar) {
            return aVar;
        }
        return fd.o.f7408a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(jd.d<? super fd.o> dVar) throws Throwable {
        e eVar;
        d dVar2;
        if (dVar instanceof e) {
            eVar = (e) dVar;
            int i10 = eVar.f14135k;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                eVar.f14135k = i10 - Integer.MIN_VALUE;
            } else {
                eVar = new e(dVar);
            }
        } else {
            eVar = new e(dVar);
        }
        Object obj = eVar.f14133i;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i11 = eVar.f14135k;
        if (i11 == 0) {
            d3.e.p(obj);
            eVar.f14132h = this;
            eVar.f14135k = 1;
            if (g(eVar) == aVar) {
                return aVar;
            }
            dVar2 = this;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            dVar2 = eVar.f14132h;
            d3.e.p(obj);
        }
        Drawable background = dVar2.f14116a.f13731b.getBackground();
        p4.h.h(background, "null cannot be cast to non-null type android.graphics.drawable.TransitionDrawable");
        ((TransitionDrawable) background).startTransition(HttpStatusCodesKt.HTTP_OK);
        return fd.o.f7408a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(jd.d<? super fd.o> dVar) throws Throwable {
        f fVar;
        d dVar2;
        if (dVar instanceof f) {
            fVar = (f) dVar;
            int i10 = fVar.f14139k;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                fVar.f14139k = i10 - Integer.MIN_VALUE;
            } else {
                fVar = new f(dVar);
            }
        } else {
            fVar = new f(dVar);
        }
        Object obj = fVar.f14137i;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i11 = fVar.f14139k;
        if (i11 == 0) {
            d3.e.p(obj);
            fVar.f14136h = this;
            fVar.f14139k = 1;
            e();
            if (fd.o.f7408a == aVar) {
                return aVar;
            }
            dVar2 = this;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            dVar2 = fVar.f14136h;
            d3.e.p(obj);
        }
        Drawable background = dVar2.f14116a.f13731b.getBackground();
        p4.h.h(background, "null cannot be cast to non-null type android.graphics.drawable.TransitionDrawable");
        ((TransitionDrawable) background).reverseTransition(HttpStatusCodesKt.HTTP_OK);
        return fd.o.f7408a;
    }

    /* JADX WARN: Incorrect return type in method signature: (Ljd/d<-Lfd/o;>;)Ljava/lang/Object; */
    public final void e() {
        if (!this.f14118c.f14162i.f14160i.getState().isCharging() && !this.f14118c.f14161h.f14160i.getState().isCharging()) {
            this.f14116a.f13732c.f13723a.setAlpha(0.0f);
            this.f14116a.f13733d.f13723a.setAlpha(0.0f);
            return;
        }
        if (this.f14118c.f14161h.f14160i.getState().isCharging()) {
            this.f14116a.f13732c.f13723a.setAlpha(1.0f);
            ImageView imageView = this.f14116a.f13732c.f13723a;
            p4.h.i(imageView, "binding.batteryDetailsLeft.batteryDetailsBolt");
            imageView.setImageTintList(ColorStateList.valueOf(-1));
        } else {
            ImageView imageView2 = this.f14116a.f13732c.f13723a;
            p4.h.i(imageView2, "binding.batteryDetailsLeft.batteryDetailsBolt");
            imageView2.setImageTintList(ColorStateList.valueOf(-16777216));
            this.f14116a.f13732c.f13723a.setAlpha(0.2f);
        }
        if (this.f14118c.f14162i.f14160i.getState().isCharging()) {
            ImageView imageView3 = this.f14116a.f13733d.f13723a;
            p4.h.i(imageView3, "binding.batteryDetailsRight.batteryDetailsBolt");
            imageView3.setImageTintList(ColorStateList.valueOf(-1));
            this.f14116a.f13733d.f13723a.setAlpha(1.0f);
            return;
        }
        ImageView imageView4 = this.f14116a.f13733d.f13723a;
        p4.h.i(imageView4, "binding.batteryDetailsRight.batteryDetailsBolt");
        imageView4.setImageTintList(ColorStateList.valueOf(-16777216));
        this.f14116a.f13733d.f13723a.setAlpha(0.2f);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00c4 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:34:0x00cf A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object f(jd.d<? super fd.o> dVar) throws Throwable {
        g gVar;
        long j10;
        d dVar2;
        long j11;
        CoroutineDispatcher coroutineDispatcher;
        h hVar;
        if (dVar instanceof g) {
            gVar = (g) dVar;
            int i10 = gVar.f14144l;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                gVar.f14144l = i10 - Integer.MIN_VALUE;
            } else {
                gVar = new g(dVar);
            }
        } else {
            gVar = new g(dVar);
        }
        Object obj = gVar.f14142j;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i11 = gVar.f14144l;
        if (i11 != 0) {
            if (i11 == 1) {
                j11 = gVar.f14141i;
                dVar2 = gVar.f14140h;
                d3.e.p(obj);
            } else if (i11 == 2) {
                dVar2 = gVar.f14140h;
                d3.e.p(obj);
                gVar.f14140h = null;
                gVar.f14144l = 3;
                if (dVar2.a(gVar) == aVar) {
                    return aVar;
                }
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            return fd.o.f7408a;
        }
        d3.e.p(obj);
        j10 = 200;
        boolean zH = h();
        if (zH) {
            Drawable background = this.f14116a.f13731b.getBackground();
            p4.h.h(background, "null cannot be cast to non-null type android.graphics.drawable.TransitionDrawable");
            ((TransitionDrawable) background).startTransition(HttpStatusCodesKt.HTTP_OK);
        }
        TextView textView = this.f14116a.f13733d.f13725c;
        p4.h.i(textView, "binding.batteryDetailsRight.batteryDetailsPercent");
        j(textView, this.f14118c.f14162i);
        TextView textView2 = this.f14116a.f13732c.f13725c;
        p4.h.i(textView2, "binding.batteryDetailsLeft.batteryDetailsPercent");
        j(textView2, this.f14118c.f14161h);
        if (zH) {
            this.f14116a.f13732c.f13723a.setVisibility(0);
            this.f14116a.f13733d.f13723a.setVisibility(0);
            gVar.f14140h = this;
            gVar.f14141i = 200L;
            gVar.f14144l = 1;
            e();
            if (fd.o.f7408a == aVar) {
                return aVar;
            }
            dVar2 = this;
            j11 = 200;
        } else {
            dVar2 = this;
        }
        coroutineDispatcher = Dispatchers.getDefault();
        hVar = new h(j10, null);
        gVar.f14140h = dVar2;
        gVar.f14144l = 2;
        if (BuildersKt.withContext(coroutineDispatcher, hVar, gVar) == aVar) {
            return aVar;
        }
        gVar.f14140h = null;
        gVar.f14144l = 3;
        if (dVar2.a(gVar) == aVar) {
            return aVar;
        }
        return fd.o.f7408a;
        j10 = j11;
        coroutineDispatcher = Dispatchers.getDefault();
        hVar = new h(j10, null);
        gVar.f14140h = dVar2;
        gVar.f14144l = 2;
        if (BuildersKt.withContext(coroutineDispatcher, hVar, gVar) == aVar) {
            return aVar;
        }
        gVar.f14140h = null;
        gVar.f14144l = 3;
        if (dVar2.a(gVar) == aVar) {
            return aVar;
        }
        return fd.o.f7408a;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0070 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object g(jd.d<? super fd.o> dVar) throws Throwable {
        i iVar;
        d dVar2;
        if (dVar instanceof i) {
            iVar = (i) dVar;
            int i10 = iVar.f14150k;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                iVar.f14150k = i10 - Integer.MIN_VALUE;
            } else {
                iVar = new i(dVar);
            }
        } else {
            iVar = new i(dVar);
        }
        Object obj = iVar.f14148i;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i11 = iVar.f14150k;
        if (i11 != 0) {
            if (i11 == 1) {
                dVar2 = iVar.f14147h;
                d3.e.p(obj);
            } else if (i11 == 2) {
                dVar2 = iVar.f14147h;
                d3.e.p(obj);
                iVar.f14147h = null;
                iVar.f14150k = 3;
                dVar2.e();
                if (fd.o.f7408a == aVar) {
                    return aVar;
                }
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            return fd.o.f7408a;
        }
        d3.e.p(obj);
        CoroutineDispatcher coroutineDispatcher = Dispatchers.getDefault();
        j jVar = new j(null);
        iVar.f14147h = this;
        iVar.f14150k = 1;
        if (BuildersKt.withContext(coroutineDispatcher, jVar, iVar) == aVar) {
            return aVar;
        }
        dVar2 = this;
        iVar.f14147h = dVar2;
        iVar.f14150k = 2;
        if (dVar2.b(iVar) == aVar) {
            return aVar;
        }
        iVar.f14147h = null;
        iVar.f14150k = 3;
        dVar2.e();
        if (fd.o.f7408a == aVar) {
            return aVar;
        }
        return fd.o.f7408a;
    }

    public final boolean h() {
        return this.f14118c.f14162i.f14160i.getState().isCharging() || this.f14118c.f14161h.f14160i.getState().isCharging();
    }

    /* JADX WARN: Code duplicated, block: B:61:0x0155  */
    /* JADX WARN: Code duplicated, block: B:63:0x0165 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:64:0x0166  */
    /* JADX WARN: Code duplicated, block: B:67:0x0178 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:70:0x017e  */
    /* JADX WARN: Code duplicated, block: B:72:0x018b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:75:0x0191  */
    /* JADX WARN: Code duplicated, block: B:77:0x019c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:78:0x019d  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object i(q8.f fVar, jd.d<? super fd.o> dVar) throws Throwable {
        k kVar;
        boolean z10;
        boolean z11;
        boolean z12;
        d dVar2;
        boolean z13;
        boolean z14;
        boolean z15;
        d dVar3;
        d dVar4;
        d dVar5;
        boolean z16;
        boolean z17;
        d dVar6;
        boolean z18;
        d dVar7;
        if (dVar instanceof k) {
            kVar = (k) dVar;
            int i10 = kVar.f14158n;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                kVar.f14158n = i10 - Integer.MIN_VALUE;
            } else {
                kVar = new k(dVar);
            }
        } else {
            kVar = new k(dVar);
        }
        Object obj = kVar.f14156l;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        switch (kVar.f14158n) {
            case 0:
                d3.e.p(obj);
                q8.e eVar = fVar.f14161h;
                q8.e eVar2 = fVar.f14162i;
                p4.h.j(eVar, "leftShoeBatteryInfoState");
                p4.h.j(eVar2, "rightShoeBatteryInfoState");
                q8.f fVar2 = new q8.f(eVar, eVar2);
                this.f14118c = fVar2;
                boolean zC = p4.h.c(fVar2, this.f14117b);
                z10 = false;
                z11 = !k() && h();
                z12 = k() && ((this.f14117b.f14162i.f14160i.getState().isCharging() && this.f14118c.f14161h.f14160i.getState().isCharging()) || (this.f14117b.f14161h.f14160i.getState().isCharging() && this.f14118c.f14162i.f14160i.getState().isCharging()));
                if (k() && !h()) {
                    z10 = true;
                }
                boolean z19 = !p4.h.c(this.f14117b, this.f14118c);
                TextView textView = this.f14116a.f13733d.f13725c;
                p4.h.i(textView, "binding.batteryDetailsRight.batteryDetailsPercent");
                j(textView, this.f14118c.f14162i);
                TextView textView2 = this.f14116a.f13732c.f13725c;
                p4.h.i(textView2, "binding.batteryDetailsLeft.batteryDetailsPercent");
                j(textView2, this.f14118c.f14161h);
                if (!this.f14119d) {
                    kVar.f14152h = this;
                    kVar.f14158n = 1;
                    if (f(kVar) == aVar) {
                        return aVar;
                    }
                    dVar4 = this;
                    dVar4.f14119d = true;
                    dVar4.f14117b = dVar4.f14118c;
                    return fd.o.f7408a;
                }
                if (zC) {
                    return fd.o.f7408a;
                }
                if (z19) {
                    kVar.f14152h = this;
                    kVar.f14153i = z11;
                    kVar.f14154j = z12;
                    kVar.f14155k = z10;
                    kVar.f14158n = 2;
                    if (a(kVar) == aVar) {
                        return aVar;
                    }
                    z13 = z11;
                    z14 = z10;
                    z15 = z12;
                    dVar3 = this;
                    z11 = z13;
                    boolean z20 = z15;
                    z10 = z14;
                    dVar2 = dVar3;
                    z12 = z20;
                } else {
                    dVar2 = this;
                }
                if (z12) {
                    kVar.f14152h = dVar2;
                    kVar.f14153i = z11;
                    kVar.f14154j = z10;
                    kVar.f14158n = 3;
                    dVar2.e();
                    if (fd.o.f7408a == aVar) {
                        return aVar;
                    }
                    dVar5 = dVar2;
                    z16 = z10;
                    z17 = z11;
                    kVar.f14152h = dVar5;
                    kVar.f14153i = z17;
                    kVar.f14154j = z16;
                    kVar.f14158n = 4;
                    if (dVar5.b(kVar) == aVar) {
                        return aVar;
                    }
                    z11 = z17;
                    z10 = z16;
                    dVar2 = dVar5;
                }
                if (z11) {
                    kVar.f14152h = dVar2;
                    kVar.f14153i = z10;
                    kVar.f14158n = 5;
                    if (dVar2.c(kVar) == aVar) {
                        return aVar;
                    }
                }
                boolean z21 = z10;
                dVar6 = dVar2;
                z18 = z21;
                if (z18) {
                    kVar.f14152h = dVar6;
                    kVar.f14158n = 6;
                    if (dVar6.d(kVar) == aVar) {
                        return aVar;
                    }
                    dVar7 = dVar6;
                    dVar6 = dVar7;
                }
                dVar6.f14117b = dVar6.f14118c;
                return fd.o.f7408a;
            case 1:
                dVar4 = kVar.f14152h;
                d3.e.p(obj);
                dVar4.f14119d = true;
                dVar4.f14117b = dVar4.f14118c;
                return fd.o.f7408a;
            case 2:
                z14 = kVar.f14155k;
                z15 = kVar.f14154j;
                z13 = kVar.f14153i;
                dVar3 = kVar.f14152h;
                d3.e.p(obj);
                z11 = z13;
                boolean z22 = z15;
                z10 = z14;
                dVar2 = dVar3;
                z12 = z22;
                if (z12) {
                    kVar.f14152h = dVar2;
                    kVar.f14153i = z11;
                    kVar.f14154j = z10;
                    kVar.f14158n = 3;
                    dVar2.e();
                    if (fd.o.f7408a == aVar) {
                        return aVar;
                    }
                    dVar5 = dVar2;
                    z16 = z10;
                    z17 = z11;
                    kVar.f14152h = dVar5;
                    kVar.f14153i = z17;
                    kVar.f14154j = z16;
                    kVar.f14158n = 4;
                    if (dVar5.b(kVar) == aVar) {
                        return aVar;
                    }
                    z11 = z17;
                    z10 = z16;
                    dVar2 = dVar5;
                }
                if (z11) {
                    kVar.f14152h = dVar2;
                    kVar.f14153i = z10;
                    kVar.f14158n = 5;
                    if (dVar2.c(kVar) == aVar) {
                        return aVar;
                    }
                }
                boolean z23 = z10;
                dVar6 = dVar2;
                z18 = z23;
                if (z18) {
                    kVar.f14152h = dVar6;
                    kVar.f14158n = 6;
                    if (dVar6.d(kVar) == aVar) {
                        return aVar;
                    }
                    dVar7 = dVar6;
                    dVar6 = dVar7;
                }
                dVar6.f14117b = dVar6.f14118c;
                return fd.o.f7408a;
            case 3:
                z16 = kVar.f14154j;
                z17 = kVar.f14153i;
                dVar5 = kVar.f14152h;
                d3.e.p(obj);
                kVar.f14152h = dVar5;
                kVar.f14153i = z17;
                kVar.f14154j = z16;
                kVar.f14158n = 4;
                if (dVar5.b(kVar) == aVar) {
                    return aVar;
                }
                z11 = z17;
                z10 = z16;
                dVar2 = dVar5;
                if (z11) {
                    kVar.f14152h = dVar2;
                    kVar.f14153i = z10;
                    kVar.f14158n = 5;
                    if (dVar2.c(kVar) == aVar) {
                        return aVar;
                    }
                }
                boolean z24 = z10;
                dVar6 = dVar2;
                z18 = z24;
                if (z18) {
                    kVar.f14152h = dVar6;
                    kVar.f14158n = 6;
                    if (dVar6.d(kVar) == aVar) {
                        return aVar;
                    }
                    dVar7 = dVar6;
                    dVar6 = dVar7;
                }
                dVar6.f14117b = dVar6.f14118c;
                return fd.o.f7408a;
            case 4:
                z16 = kVar.f14154j;
                z17 = kVar.f14153i;
                dVar5 = kVar.f14152h;
                d3.e.p(obj);
                z11 = z17;
                z10 = z16;
                dVar2 = dVar5;
                if (z11) {
                    kVar.f14152h = dVar2;
                    kVar.f14153i = z10;
                    kVar.f14158n = 5;
                    if (dVar2.c(kVar) == aVar) {
                        return aVar;
                    }
                }
                boolean z25 = z10;
                dVar6 = dVar2;
                z18 = z25;
                if (z18) {
                    kVar.f14152h = dVar6;
                    kVar.f14158n = 6;
                    if (dVar6.d(kVar) == aVar) {
                        return aVar;
                    }
                    dVar7 = dVar6;
                    dVar6 = dVar7;
                }
                dVar6.f14117b = dVar6.f14118c;
                return fd.o.f7408a;
            case 5:
                z18 = kVar.f14153i;
                dVar6 = kVar.f14152h;
                d3.e.p(obj);
                if (z18) {
                    kVar.f14152h = dVar6;
                    kVar.f14158n = 6;
                    if (dVar6.d(kVar) == aVar) {
                        return aVar;
                    }
                    dVar7 = dVar6;
                    dVar6 = dVar7;
                }
                dVar6.f14117b = dVar6.f14118c;
                return fd.o.f7408a;
            case 6:
                dVar7 = kVar.f14152h;
                d3.e.p(obj);
                dVar6 = dVar7;
                dVar6.f14117b = dVar6.f14118c;
                return fd.o.f7408a;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final void j(TextView textView, q8.e eVar) {
        String str = eVar.f14159h ? "R" : "L";
        if (eVar.f14160i.getPercent() <= 0) {
            textView.setText((CharSequence) null);
            return;
        }
        textView.setText(str + " " + eVar.f14160i.getPercent() + "%");
    }

    public final boolean k() {
        return this.f14117b.f14162i.f14160i.getState().isCharging() || this.f14117b.f14161h.f14160i.getState().isCharging();
    }
}
