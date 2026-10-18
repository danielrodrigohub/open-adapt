package p7;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.fragment.app.r0;
import androidx.lifecycle.o;
import com.nike.adapt.adk.model.AdaptShoeColor;
import com.nike.adapt.adk.model.LightColor;
import com.nike.adapt.adk.model.ShoeColor;
import f.e;
import gd.w;
import o7.u;
import o7.x;
import p4.h;

/* JADX INFO: compiled from: GradientLoader.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Drawable f13282b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static z8.a f13283c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static AdaptShoeColor f13284d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f13281a = new b();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final fd.d f13285e = o.w(3, c.f13305h);

    /* JADX INFO: compiled from: GradientLoader.kt */
    public enum a {
        AURORA_GREEN(new int[]{Color.parseColor("#BAFFE7"), Color.parseColor("#47A9CA"), Color.parseColor("#04578E")}, new float[]{0.0f, 0.4815f, 1.0f}),
        HERO_BLUE(new int[]{Color.parseColor("#B1F5FF"), Color.parseColor("#3D76E5"), Color.parseColor("#0015CD")}, new float[]{0.0f, 0.4815f, 1.0f}),
        RACER_BLUE(new int[]{Color.parseColor("#A8B5E4"), Color.parseColor("#3C59C0"), Color.parseColor("#041BB4")}, new float[]{0.0f, 0.4815f, 1.0f}),
        VIVID_PURPLE(new int[]{Color.parseColor("#FFD7DA"), Color.parseColor("#95418C"), Color.parseColor("#4F0558")}, new float[]{0.0f, 0.4815f, 1.0f}),
        PINK_BLAST(new int[]{Color.parseColor("#FFD6D7"), Color.parseColor("#FF6AA4"), Color.parseColor("#FF0B6A")}, new float[]{0.0f, 0.4815f, 1.0f}),
        RED_ORBIT(new int[]{Color.parseColor("#F8CAE5"), Color.parseColor("#E64363"), Color.parseColor("#D8081C")}, new float[]{0.0f, 0.4815f, 1.0f}),
        BRIGHT_CRIMSON(new int[]{Color.parseColor("#FFCFCF"), Color.parseColor("#FF5652"), Color.parseColor("#FF0100")}, new float[]{0.0f, 0.4815f, 1.0f}),
        TOTAL_ORANGE(new int[]{Color.parseColor("#FFC5A1"), Color.parseColor("#FF7625"), Color.parseColor("#FF4801")}, new float[]{0.0f, 0.4815f, 1.0f}),
        OPTIC_YELLOW(new int[]{Color.parseColor("#FFF600"), Color.parseColor("#EBCB00"), Color.parseColor("#FF8300")}, new float[]{0.0f, 0.4815f, 1.0f}),
        ELECTRIC_GREEN(new int[]{Color.parseColor("#D7FF2C"), Color.parseColor("#84D70E"), Color.parseColor("#43B100")}, new float[]{0.0f, 0.4815f, 1.0f}),
        GREEN_SPARK(new int[]{Color.parseColor("#BEFFB4"), Color.parseColor("#1FAC2B"), Color.parseColor("#11801F")}, new float[]{0.0f, 0.4815f, 1.0f}),
        WHITE(new int[]{Color.parseColor("#BBBBBB"), Color.parseColor("#999999"), Color.parseColor("#CC666666")}, new float[]{0.0f, 0.4815f, 1.0f}),
        LIGHTS_OFF(new int[]{Color.parseColor("#1D1D1D"), Color.parseColor("#272727"), Color.parseColor("#000000")}, new float[]{0.0f, 0.4815f, 1.0f}),
        GRAIN(new int[]{Color.parseColor("#161616"), Color.parseColor("#2B2B2B"), Color.parseColor("#6A6A65"), Color.parseColor("#A6A197"), Color.parseColor("#C7C8C1"), Color.parseColor("#C7C9C1")}, new float[]{0.0f, 0.2046875f, 0.43125f, 0.65625f, 0.8390625f, 1.0f});


        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int[] f13301h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final float[] f13302i;

        a(int[] iArr, float[] fArr) {
            this.f13301h = iArr;
            this.f13302i = fArr;
        }
    }

    /* JADX INFO: renamed from: p7.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: GradientLoader.kt */
    public /* synthetic */ class C0232b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f13303a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f13304b;

        static {
            int[] iArr = new int[ShoeColor.values().length];
            iArr[ShoeColor.AURORA_GREEN.ordinal()] = 1;
            iArr[ShoeColor.HERO_BLUE.ordinal()] = 2;
            iArr[ShoeColor.RACER_BLUE.ordinal()] = 3;
            iArr[ShoeColor.VIVID_PURPLE.ordinal()] = 4;
            iArr[ShoeColor.PINK_BLAST.ordinal()] = 5;
            iArr[ShoeColor.RED_ORBIT.ordinal()] = 6;
            iArr[ShoeColor.BRIGHT_CRIMSON.ordinal()] = 7;
            iArr[ShoeColor.TOTAL_ORANGE.ordinal()] = 8;
            iArr[ShoeColor.OPTI_YELLOW.ordinal()] = 9;
            iArr[ShoeColor.ELECTRIC_GREEN.ordinal()] = 10;
            iArr[ShoeColor.GREEN_SPARK.ordinal()] = 11;
            iArr[ShoeColor.WHITE.ordinal()] = 12;
            iArr[ShoeColor.RACER_BLUE_OPTI_YELLOW.ordinal()] = 13;
            iArr[ShoeColor.RACER_BLUE_ELECTRIC_GREEN.ordinal()] = 14;
            iArr[ShoeColor.RACER_BLUE_AURORA_GREEN.ordinal()] = 15;
            iArr[ShoeColor.VIVID_PURPLE_OPTI_YELLOW.ordinal()] = 16;
            iArr[ShoeColor.VIVID_PURPLE_WHITE.ordinal()] = 17;
            iArr[ShoeColor.VIVID_PURPLE_AURORA_GREEN.ordinal()] = 18;
            iArr[ShoeColor.RED_ORBIT_RACER_BLUE.ordinal()] = 19;
            iArr[ShoeColor.RED_ORBIT_OPTI_YELLOW.ordinal()] = 20;
            iArr[ShoeColor.RED_ORBIT_WHITE.ordinal()] = 21;
            iArr[ShoeColor.GREEN_SPARK_OPTI_YELLOW.ordinal()] = 22;
            iArr[ShoeColor.GREEN_SPARK_WHITE.ordinal()] = 23;
            iArr[ShoeColor.HERO_BLUE_PINK_BLAST.ordinal()] = 24;
            f13303a = iArr;
            int[] iArr2 = new int[z8.a.values().length];
            z8.a aVar = z8.a.MY_LIGHTS;
            iArr2[0] = 1;
            z8.a aVar2 = z8.a.NIKE_MAG;
            iArr2[1] = 2;
            z8.a aVar3 = z8.a.COLOR_STRIKE;
            iArr2[2] = 3;
            z8.a aVar4 = z8.a.BREATHE;
            iArr2[3] = 4;
            z8.a aVar5 = z8.a.BE_TRUE;
            iArr2[4] = 5;
            int[] iArr3 = new int[LightColor.values().length];
            iArr3[LightColor.AURORA_GREEN.ordinal()] = 1;
            iArr3[LightColor.HERO_BLUE.ordinal()] = 2;
            iArr3[LightColor.RACER_BLUE.ordinal()] = 3;
            iArr3[LightColor.VIVID_PURPLE.ordinal()] = 4;
            iArr3[LightColor.PINK_BLAST.ordinal()] = 5;
            iArr3[LightColor.RED_ORBIT.ordinal()] = 6;
            iArr3[LightColor.BRIGHT_CRIMSON.ordinal()] = 7;
            iArr3[LightColor.TOTAL_ORANGE.ordinal()] = 8;
            iArr3[LightColor.OPTIC_YELLOW.ordinal()] = 9;
            iArr3[LightColor.ELECTRIC_GREEN.ordinal()] = 10;
            iArr3[LightColor.GREEN_SPARK.ordinal()] = 11;
            iArr3[LightColor.WHITE.ordinal()] = 12;
            f13304b = iArr3;
            int[] iArr4 = new int[a.values().length];
            iArr4[a.WHITE.ordinal()] = 1;
            iArr4[a.LIGHTS_OFF.ordinal()] = 2;
        }
    }

    /* JADX INFO: compiled from: GradientLoader.kt */
    public static final class c extends rd.o implements qd.a<h8.a> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final c f13305h = new c();

        public c() {
            super(0);
        }

        @Override // qd.a
        public final h8.a invoke() {
            int i10 = h8.a.f8296a;
            return h8.c.f8298b;
        }
    }

    /* JADX INFO: compiled from: GradientLoader.kt */
    public static final class d extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final d f13306h = new d();

        public d() {
            super(0);
        }

        @Override // qd.a
        public final /* bridge */ /* synthetic */ fd.o invoke() {
            return fd.o.f7408a;
        }
    }

    public final int a(Context context, float f10) {
        return (int) (f10 * context.getResources().getDisplayMetrics().density);
    }

    public final h8.a b() {
        return (h8.a) f13285e.getValue();
    }

    public final BitmapDrawable c(ShoeColor shoeColor, boolean z10, Context context) {
        a aVar;
        if (z10) {
            aVar = a.LIGHTS_OFF;
        } else {
            h.j(shoeColor, "color");
            switch (C0232b.f13304b[shoeColor.getLeftLightColor().ordinal()]) {
                case 1:
                    aVar = a.AURORA_GREEN;
                    break;
                case 2:
                    aVar = a.HERO_BLUE;
                    break;
                case 3:
                    aVar = a.RACER_BLUE;
                    break;
                case 4:
                    aVar = a.VIVID_PURPLE;
                    break;
                case 5:
                    aVar = a.PINK_BLAST;
                    break;
                case 6:
                    aVar = a.RED_ORBIT;
                    break;
                case 7:
                    aVar = a.BRIGHT_CRIMSON;
                    break;
                case 8:
                    aVar = a.TOTAL_ORANGE;
                    break;
                case 9:
                    aVar = a.OPTIC_YELLOW;
                    break;
                case 10:
                    aVar = a.ELECTRIC_GREEN;
                    break;
                case 11:
                    aVar = a.GREEN_SPARK;
                    break;
                case 12:
                    aVar = a.WHITE;
                    break;
                default:
                    throw new j2.a();
            }
        }
        Point point = new Point();
        e eVar = (e) context;
        eVar.getWindowManager().getDefaultDisplay().getSize(point);
        float fA = a(context, 8.0f);
        float fA2 = a(context, -23.4f);
        float fA3 = a(context, -195.557f);
        float fA4 = a(context, -880.487f);
        float f10 = -1;
        float fSqrt = (float) Math.sqrt(Math.pow((f10 * fA4) + fA2, 2.0d) + Math.pow((fA3 * f10) + fA, 2.0d));
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(point.x, point.y, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        int iOrdinal = aVar.ordinal();
        if (iOrdinal == 11) {
            Paint paint = new Paint();
            paint.setShader(new LinearGradient(fA, fA2, fA3, fA4, aVar.f13301h, aVar.f13302i, Shader.TileMode.CLAMP));
            canvas.drawRect(new Rect(0, 0, point.x, point.y), paint);
            canvas.drawRect(0.0f, 0.0f, point.x, point.y, d(point, true));
            return new BitmapDrawable(eVar.getResources(), bitmapCreateBitmap);
        }
        if (iOrdinal == 12) {
            Paint paint2 = new Paint();
            paint2.setShader(new LinearGradient(fA, fA2, fA3, fA4, aVar.f13301h, aVar.f13302i, Shader.TileMode.CLAMP));
            canvas.drawRect(new Rect(0, 0, point.x, point.y), paint2);
            return new BitmapDrawable(eVar.getResources(), bitmapCreateBitmap);
        }
        Paint paint3 = new Paint();
        paint3.setShader(new RadialGradient(fA, fA2, fSqrt, aVar.f13301h, aVar.f13302i, Shader.TileMode.CLAMP));
        canvas.drawRect(new Rect(0, 0, point.x, point.y), paint3);
        canvas.drawRect(0.0f, 0.0f, point.x, point.y, d(point, false));
        return new BitmapDrawable(eVar.getResources(), bitmapCreateBitmap);
    }

    public final Paint d(Point point, boolean z10) {
        int[] iArr;
        int[] iArr2;
        a aVar = a.GRAIN;
        if (z10) {
            iArr = aVar.f13301h;
            h.j(iArr, "<this>");
            if (!(iArr.length == 0)) {
                int[] iArr3 = new int[iArr.length];
                int length = iArr.length - 1;
                w it = new vd.e(0, length).iterator();
                while (((vd.d) it).f17026j) {
                    int iA = it.a();
                    iArr3[length - iA] = iArr[iA];
                }
                iArr2 = iArr3;
            }
            Paint paint = new Paint();
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.OVERLAY));
            paint.setShader(new LinearGradient(0.0f, 0.0f, point.x, point.y, iArr2, aVar.f13302i, Shader.TileMode.CLAMP));
            return paint;
        }
        iArr = aVar.f13301h;
        iArr2 = iArr;
        Paint paint2 = new Paint();
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.OVERLAY));
        paint2.setShader(new LinearGradient(0.0f, 0.0f, point.x, point.y, iArr2, aVar.f13302i, Shader.TileMode.CLAMP));
        return paint2;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r3v15 java.lang.Object, still in use, count: 2, list:
          (r3v15 java.lang.Object) from 0x01c8: PHI (r3 I:??) = (r3v12 java.lang.Object), (r3v15 java.lang.Object) binds: [B:88:0x01c7, B:151:0x01c8] A[DONT_GENERATE, DONT_INLINE]
          (r3v15 java.lang.Object) from 0x01ba: CHECK_CAST (com.nike.adapt.network.assets.model.BackgroundImageModel) (r3v15 java.lang.Object)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:132)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:67)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:50)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:96)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:36)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:44)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    public final void e(android.view.View r17, z8.a r18) {
        /*
            Method dump skipped, instruction units count: 826
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p7.b.e(android.view.View, z8.a):void");
    }

    public final void g(Drawable drawable, z8.a aVar, AdaptShoeColor adaptShoeColor, long j10) {
        f13282b = drawable;
        f13283c = aVar;
        f13284d = adaptShoeColor;
        x xVar = x.f12420a;
        x.f12420a.h("GradientUtil", r0.f("total time to update = ", System.currentTimeMillis() - j10), (120 & 4) != 0 ? u.DEBUG : null, (120 & 8) != 0 ? null : null, null, (120 & 32) != 0 ? null : null, (120 & 64) != 0 ? false : false);
    }
}
