package q8;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Shader;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import com.nike.adapt.R;
import fd.o;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import qd.p;

/* JADX INFO: compiled from: BatteryAnimationUtil.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f14094a = new c();

    /* JADX INFO: compiled from: BatteryAnimationUtil.kt */
    @ld.e(c = "com.nike.adapt.ui.battery.BatteryAnimationUtil", f = "BatteryAnimationUtil.kt", l = {32, 54}, m = "animateBattery")
    public static final class a extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public ImageView f14095h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public ValueAnimator f14096i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public float f14097j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public float f14098k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f14099l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f14100m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public /* synthetic */ Object f14101n;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public int f14103p;

        public a(jd.d<? super a> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f14101n = obj;
            this.f14103p |= Integer.MIN_VALUE;
            return c.this.a(null, null, null, null, this);
        }
    }

    /* JADX INFO: compiled from: BatteryAnimationUtil.kt */
    @ld.e(c = "com.nike.adapt.ui.battery.BatteryAnimationUtil$animateBattery$2", f = "BatteryAnimationUtil.kt", l = {}, m = "invokeSuspend")
    public static final class b extends ld.i implements p<CoroutineScope, jd.d<? super o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Canvas f14104h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ Bitmap f14105i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ float f14106j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final /* synthetic */ ImageView f14107k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final /* synthetic */ int f14108l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final /* synthetic */ Paint f14109m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final /* synthetic */ int f14110n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final /* synthetic */ int f14111o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public final /* synthetic */ Bitmap f14112p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Canvas canvas, Bitmap bitmap, float f10, ImageView imageView, int i10, Paint paint, int i11, int i12, Bitmap bitmap2, jd.d<? super b> dVar) {
            super(2, dVar);
            this.f14104h = canvas;
            this.f14105i = bitmap;
            this.f14106j = f10;
            this.f14107k = imageView;
            this.f14108l = i10;
            this.f14109m = paint;
            this.f14110n = i11;
            this.f14111o = i12;
            this.f14112p = bitmap2;
        }

        @Override // ld.a
        public final jd.d<o> create(Object obj, jd.d<?> dVar) {
            return new b(this.f14104h, this.f14105i, this.f14106j, this.f14107k, this.f14108l, this.f14109m, this.f14110n, this.f14111o, this.f14112p, dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super o> dVar) throws Throwable {
            b bVar = (b) create(coroutineScope, dVar);
            o oVar = o.f7408a;
            bVar.invokeSuspend(oVar);
            return oVar;
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            d3.e.p(obj);
            Canvas canvas = this.f14104h;
            Bitmap bitmap = this.f14105i;
            float f10 = this.f14106j;
            ImageView imageView = this.f14107k;
            int i10 = this.f14108l;
            Paint paint = this.f14109m;
            int i11 = this.f14110n;
            int i12 = this.f14111o;
            Bitmap bitmap2 = this.f14112p;
            p4.h.i(bitmap2, "batteryBitmap");
            androidx.lifecycle.o.a(canvas, bitmap, f10, imageView, i10, paint, i11, i12, bitmap2);
            return o.f7408a;
        }
    }

    /* JADX INFO: renamed from: q8.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: BatteryAnimationUtil.kt */
    @ld.e(c = "com.nike.adapt.ui.battery.BatteryAnimationUtil$animateBattery$4", f = "BatteryAnimationUtil.kt", l = {}, m = "invokeSuspend")
    public static final class C0242c extends ld.i implements p<CoroutineScope, jd.d<? super o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ ValueAnimator f14113h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0242c(ValueAnimator valueAnimator, jd.d<? super C0242c> dVar) {
            super(2, dVar);
            this.f14113h = valueAnimator;
        }

        @Override // ld.a
        public final jd.d<o> create(Object obj, jd.d<?> dVar) {
            return new C0242c(this.f14113h, dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super o> dVar) throws Throwable {
            C0242c c0242c = (C0242c) create(coroutineScope, dVar);
            o oVar = o.f7408a;
            c0242c.invokeSuspend(oVar);
            return oVar;
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            d3.e.p(obj);
            this.f14113h.start();
            return o.f7408a;
        }
    }

    /* JADX INFO: compiled from: BatteryAnimationUtil.kt */
    @ld.e(c = "com.nike.adapt.ui.battery.BatteryAnimationUtil$animateCurrentChargingStateOfBattery$3", f = "BatteryAnimationUtil.kt", l = {}, m = "invokeSuspend")
    public static final class d extends ld.i implements p<CoroutineScope, jd.d<? super o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ ValueAnimator f14114h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(ValueAnimator valueAnimator, jd.d<? super d> dVar) {
            super(2, dVar);
            this.f14114h = valueAnimator;
        }

        @Override // ld.a
        public final jd.d<o> create(Object obj, jd.d<?> dVar) {
            return new d(this.f14114h, dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super o> dVar) throws Throwable {
            d dVar2 = (d) create(coroutineScope, dVar);
            o oVar = o.f7408a;
            dVar2.invokeSuspend(oVar);
            return oVar;
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            d3.e.p(obj);
            this.f14114h.start();
            return o.f7408a;
        }
    }

    /* JADX INFO: compiled from: BatteryAnimationUtil.kt */
    public static final class e extends rd.o implements qd.a<Integer> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ ImageView f14115h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(ImageView imageView) {
            super(0);
            this.f14115h = imageView;
        }

        @Override // qd.a
        public final Integer invoke() {
            Context context = this.f14115h.getContext();
            Object obj = y.a.f18143a;
            return Integer.valueOf(y.a.c.a(context, R.color.battery_background));
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:52:0x0182 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x0180 -> B:53:0x0183). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:35:0x00c1
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object a(android.widget.ImageView r28, q8.e r29, q8.e r30, qd.l<? super java.lang.Integer, fd.o> r31, jd.d<? super fd.o> r32) {
        /*
            Method dump skipped, instruction units count: 393
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: q8.c.a(android.widget.ImageView, q8.e, q8.e, qd.l, jd.d):java.lang.Object");
    }

    public final Object b(final ImageView imageView, final q8.e eVar, int i10, jd.d<? super o> dVar) {
        final int height = imageView.getHeight();
        final int width = imageView.getWidth();
        int i11 = eVar.f14160i.getPercent() <= 20 ? -65536 : -1;
        if (i10 == i11) {
            return o.f7408a;
        }
        ValueAnimator duration = ValueAnimator.ofArgb(i10, i11).setDuration(100L);
        final fd.d dVarX = androidx.lifecycle.o.x(new e(imageView));
        duration.setInterpolator(new LinearInterpolator());
        Context context = imageView.getContext();
        p4.h.i(context, "battery.context");
        final Bitmap bitmapB = androidx.lifecycle.o.b(context, imageView.getWidth(), imageView.getHeight());
        final Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        final Canvas canvas = new Canvas(bitmapCreateBitmap);
        final Paint paint = new Paint();
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: q8.b
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                e eVar2 = eVar;
                ImageView imageView2 = imageView;
                Paint paint2 = paint;
                Canvas canvas2 = canvas;
                Bitmap bitmap = bitmapB;
                int i12 = width;
                int i13 = height;
                Bitmap bitmap2 = bitmapCreateBitmap;
                fd.d dVar2 = dVarX;
                p4.h.j(eVar2, "$currentBatteryInfoState");
                p4.h.j(imageView2, "$battery");
                p4.h.j(paint2, "$paint");
                p4.h.j(canvas2, "$canvas");
                p4.h.j(bitmap, "$bitmap");
                p4.h.j(dVar2, "$backgroundColor$delegate");
                p4.h.j(valueAnimator, "it");
                float[] fArr = {0.0f, 1.0f - eVar2.a(), 1.0f - eVar2.a(), 1.0f};
                float height2 = imageView2.getHeight();
                Object animatedValue = valueAnimator.getAnimatedValue();
                p4.h.h(animatedValue, "null cannot be cast to non-null type kotlin.Int");
                Object animatedValue2 = valueAnimator.getAnimatedValue();
                p4.h.h(animatedValue2, "null cannot be cast to non-null type kotlin.Int");
                paint2.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, height2, new int[]{((Number) dVar2.getValue()).intValue(), ((Number) dVar2.getValue()).intValue(), ((Integer) animatedValue).intValue(), ((Integer) animatedValue2).intValue()}, fArr, Shader.TileMode.CLAMP));
                canvas2.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
                canvas2.drawRect(0.0f, 0.0f, i12, i13, paint2);
                imageView2.setImageBitmap(bitmap2);
            }
        });
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new d(duration, null), dVar);
        return objWithContext == kd.a.COROUTINE_SUSPENDED ? objWithContext : o.f7408a;
    }
}
