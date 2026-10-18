package y2;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorSpace;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Queue;
import java.util.concurrent.locks.Lock;

/* JADX INFO: compiled from: Downsampler.java */
/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final p2.g<p2.b> f18465f = p2.g.a("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", p2.b.PREFER_ARGB_8888);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final p2.g<p2.i> f18466g = new p2.g<>("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace", null, p2.g.f12643e);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final p2.g<Boolean> f18467h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final p2.g<Boolean> f18468i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final a f18469j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Queue<BitmapFactory.Options> f18470k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final s2.d f18471a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DisplayMetrics f18472b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final s2.b f18473c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List<ImageHeaderParser> f18474d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final s f18475e = s.a();

    /* JADX INFO: compiled from: Downsampler.java */
    public class a implements b {
        @Override // y2.n.b
        public final void a(s2.d dVar, Bitmap bitmap) {
        }

        @Override // y2.n.b
        public final void b() {
        }
    }

    /* JADX INFO: compiled from: Downsampler.java */
    public interface b {
        void a(s2.d dVar, Bitmap bitmap) throws IOException;

        void b();
    }

    static {
        p2.g<m> gVar = m.f18463f;
        Boolean bool = Boolean.FALSE;
        f18467h = p2.g.a("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", bool);
        f18468i = p2.g.a("com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", bool);
        Collections.unmodifiableSet(new HashSet(Arrays.asList("image/vnd.wap.wbmp", "image/x-ico")));
        f18469j = new a();
        Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));
        char[] cArr = l3.l.f9945a;
        f18470k = new ArrayDeque(0);
    }

    public n(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, s2.d dVar, s2.b bVar) {
        this.f18474d = list;
        Objects.requireNonNull(displayMetrics, "Argument must not be null");
        this.f18472b = displayMetrics;
        Objects.requireNonNull(dVar, "Argument must not be null");
        this.f18471a = dVar;
        Objects.requireNonNull(bVar, "Argument must not be null");
        this.f18473c = bVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:?, code lost:
    
        throw r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Bitmap c(t tVar, BitmapFactory.Options options, b bVar, s2.d dVar) throws IOException {
        if (!options.inJustDecodeBounds) {
            bVar.b();
            tVar.b();
        }
        int i10 = options.outWidth;
        int i11 = options.outHeight;
        String str = options.outMimeType;
        Lock lock = a0.f18429e;
        lock.lock();
        try {
            try {
                Bitmap bitmapA = tVar.a(options);
                lock.unlock();
                return bitmapA;
            } catch (IllegalArgumentException e10) {
                IOException iOExceptionH = h(e10, i10, i11, str, options);
                if (Log.isLoggable("Downsampler", 3)) {
                    Log.d("Downsampler", "Failed to decode with inBitmap, trying again without Bitmap re-use", iOExceptionH);
                }
                Bitmap bitmap = options.inBitmap;
                if (bitmap == null) {
                    throw iOExceptionH;
                }
                try {
                    dVar.e(bitmap);
                    options.inBitmap = null;
                    Bitmap bitmapC = c(tVar, options, bVar, dVar);
                    a0.f18429e.unlock();
                    return bitmapC;
                } catch (IOException unused) {
                    throw iOExceptionH;
                }
            }
        } catch (Throwable th) {
            a0.f18429e.unlock();
            throw th;
        }
    }

    @TargetApi(19)
    public static String d(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        StringBuilder sbC = a0.b.c(" (");
        sbC.append(bitmap.getAllocationByteCount());
        sbC.append(")");
        String string = sbC.toString();
        StringBuilder sbC2 = a0.b.c("[");
        sbC2.append(bitmap.getWidth());
        sbC2.append("x");
        sbC2.append(bitmap.getHeight());
        sbC2.append("] ");
        sbC2.append(bitmap.getConfig());
        sbC2.append(string);
        return sbC2.toString();
    }

    public static int e(double d10) {
        if (d10 > 1.0d) {
            d10 = 1.0d / d10;
        }
        return (int) Math.round(d10 * 2.147483647E9d);
    }

    public static int[] f(t tVar, BitmapFactory.Options options, b bVar, s2.d dVar) throws IOException {
        options.inJustDecodeBounds = true;
        c(tVar, options, bVar, dVar);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    public static boolean g(int i10) {
        return i10 == 90 || i10 == 270;
    }

    public static IOException h(IllegalArgumentException illegalArgumentException, int i10, int i11, String str, BitmapFactory.Options options) {
        StringBuilder sbB = androidx.recyclerview.widget.s.b("Exception decoding bitmap, outWidth: ", i10, ", outHeight: ", i11, ", outMimeType: ");
        sbB.append(str);
        sbB.append(", inBitmap: ");
        sbB.append(d(options.inBitmap));
        return new IOException(sbB.toString(), illegalArgumentException);
    }

    public static void i(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            options.inPreferredColorSpace = null;
            options.outColorSpace = null;
            options.outConfig = null;
        }
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    /* JADX WARN: Type inference failed for: r14v0, types: [java.util.ArrayDeque, java.util.Queue<android.graphics.BitmapFactory$Options>] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.util.ArrayDeque, java.util.Queue<android.graphics.BitmapFactory$Options>] */
    public final r2.w<Bitmap> a(t tVar, int i10, int i11, p2.h hVar, b bVar) throws IOException {
        ?? r14;
        BitmapFactory.Options options;
        BitmapFactory.Options options2;
        byte[] bArr = (byte[]) this.f18473c.d(65536, byte[].class);
        synchronized (n.class) {
            r14 = f18470k;
            synchronized (r14) {
                options = (BitmapFactory.Options) r14.poll();
            }
            if (options == null) {
                options = new BitmapFactory.Options();
                i(options);
            }
            options2 = options;
        }
        options2.inTempStorage = bArr;
        p2.b bVar2 = (p2.b) hVar.c(f18465f);
        p2.i iVar = (p2.i) hVar.c(f18466g);
        m mVar = (m) hVar.c(m.f18463f);
        boolean zBooleanValue = ((Boolean) hVar.c(f18467h)).booleanValue();
        p2.g<Boolean> gVar = f18468i;
        try {
            e eVarD = e.d(b(tVar, options2, mVar, bVar2, iVar, hVar.c(gVar) != null && ((Boolean) hVar.c(gVar)).booleanValue(), i10, i11, zBooleanValue, bVar), this.f18471a);
            i(options2);
            synchronized (r14) {
                r14.offer(options2);
            }
            return eVarD;
        } finally {
            i(options2);
            ?? r10 = f18470k;
            synchronized (r10) {
                r10.offer(options2);
                this.f18473c.c(bArr);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:76:0x0185  */
    /* JADX WARN: Code duplicated, block: B:78:0x0188  */
    /* JADX WARN: Code duplicated, block: B:79:0x018c  */
    /* JADX WARN: Code duplicated, block: B:82:0x019a  */
    /* JADX WARN: Code duplicated, block: B:83:0x01ee  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final Bitmap b(t tVar, BitmapFactory.Options options, m mVar, p2.b bVar, p2.i iVar, boolean z10, int i10, int i11, boolean z11, b bVar2) throws IOException {
        int i12;
        String str;
        int i13;
        String str2;
        int i14;
        int i15;
        String str3;
        int i16;
        String str4;
        boolean zHasAlpha;
        int iRound;
        int i17;
        int i18;
        Bitmap bitmap;
        ColorSpace colorSpace;
        Bitmap.Config config;
        int i19;
        int i20;
        int iFloor;
        int iRound2;
        double dB;
        int i21;
        int i22;
        int i23;
        boolean z12;
        t tVar2 = tVar;
        int i24 = l3.h.f9935b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        int[] iArrF = f(tVar2, options, bVar2, this.f18471a);
        int i25 = 0;
        int i26 = iArrF[0];
        int i27 = iArrF[1];
        String str5 = options.outMimeType;
        boolean z13 = (i26 == -1 || i27 == -1) ? false : z10;
        int iC = tVar.c();
        switch (iC) {
            case 3:
            case 4:
                i25 = 180;
                break;
            case 5:
            case 6:
                i25 = 90;
                break;
            case 7:
            case 8:
                i25 = 270;
                break;
        }
        boolean zE = a0.e(iC);
        if (i10 == Integer.MIN_VALUE) {
            i12 = g(i25) ? i27 : i26;
        } else {
            i12 = i10;
        }
        if (i11 == Integer.MIN_VALUE) {
            str = str5;
            i13 = g(i25) ? i26 : i27;
        } else {
            str = str5;
            i13 = i11;
        }
        ImageHeaderParser.ImageType imageTypeD = tVar.d();
        s2.d dVar = this.f18471a;
        String str6 = "Downsampler";
        if (i26 <= 0 || i27 <= 0) {
            str2 = ", density: ";
            i14 = i26;
            i15 = i13;
            str3 = ", target density: ";
            i16 = i27;
            if (Log.isLoggable("Downsampler", 3)) {
                Log.d("Downsampler", "Unable to determine dimensions for: " + imageTypeD + " with target [" + i12 + "x" + i15 + "]");
            }
        } else {
            if (g(i25)) {
                i20 = i27;
                i19 = i26;
            } else {
                i19 = i27;
                i20 = i26;
            }
            float fB = mVar.b(i20, i19, i12, i13);
            if (fB <= 0.0f) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Cannot scale with factor: ");
                sb2.append(fB);
                sb2.append(" from: ");
                sb2.append(mVar);
                sb2.append(", source: [");
                a1.d.e(sb2, i26, "x", i27, "], target: [");
                sb2.append(i12);
                sb2.append("x");
                sb2.append(i13);
                sb2.append("]");
                throw new IllegalArgumentException(sb2.toString());
            }
            int i28 = i25;
            int iA = mVar.a(i20, i19, i12, i13);
            if (iA == 0) {
                throw new IllegalArgumentException("Cannot round with null rounding");
            }
            float f10 = i20;
            float f11 = i19;
            i15 = i13;
            int i29 = i20 / ((int) (((double) (fB * f10)) + 0.5d));
            int i30 = i19 / ((int) (((double) (fB * f11)) + 0.5d));
            int iMax = Math.max(1, Integer.highestOneBit(iA == 1 ? Math.max(i29, i30) : Math.min(i29, i30)));
            if (iA == 1 && iMax < 1.0f / fB) {
                iMax <<= 1;
            }
            options.inSampleSize = iMax;
            if (imageTypeD == ImageHeaderParser.ImageType.JPEG) {
                float fMin = Math.min(iMax, 8);
                iRound2 = (int) Math.ceil(f10 / fMin);
                iFloor = (int) Math.ceil(f11 / fMin);
                int i31 = iMax / 8;
                if (i31 > 0) {
                    iRound2 /= i31;
                    iFloor /= i31;
                }
            } else {
                if (imageTypeD == ImageHeaderParser.ImageType.PNG || imageTypeD == ImageHeaderParser.ImageType.PNG_A) {
                    tVar2 = tVar;
                    float f12 = iMax;
                    int iFloor2 = (int) Math.floor(f10 / f12);
                    iFloor = (int) Math.floor(f11 / f12);
                    iRound2 = iFloor2;
                } else if (imageTypeD.isWebp()) {
                    float f13 = iMax;
                    iRound2 = Math.round(f10 / f13);
                    iFloor = Math.round(f11 / f13);
                } else if (i20 % iMax == 0 && i19 % iMax == 0) {
                    iRound2 = i20 / iMax;
                    iFloor = i19 / iMax;
                } else {
                    tVar2 = tVar;
                    int[] iArrF2 = f(tVar2, options, bVar2, dVar);
                    iRound2 = iArrF2[0];
                    iFloor = iArrF2[1];
                }
                dB = mVar.b(iRound2, iFloor, i12, i15);
                int iE = e(dB);
                int i32 = (int) ((((double) iE) * dB) + 0.5d);
                i21 = iMax;
                i22 = iFloor;
                options.inTargetDensity = (int) (((dB / ((double) (i32 / iE))) * ((double) i32)) + 0.5d);
                int iE2 = e(dB);
                options.inDensity = iE2;
                i23 = options.inTargetDensity;
                if (i23 > 0 || iE2 <= 0 || i23 == iE2) {
                    z12 = false;
                } else {
                    z12 = true;
                }
                if (z12) {
                    options.inScaled = true;
                } else {
                    options.inTargetDensity = 0;
                    options.inDensity = 0;
                }
                str6 = "Downsampler";
                if (Log.isLoggable(str6, 2)) {
                    i16 = i27;
                    i14 = i26;
                    StringBuilder sbB = androidx.recyclerview.widget.s.b("Calculate scaling, source: [", i14, "x", i16, "], degreesToRotate: ");
                    a1.d.e(sbB, i28, ", target: [", i12, "x");
                    a1.d.e(sbB, i15, "], power of two scaled: [", iRound2, "x");
                    sbB.append(i22);
                    sbB.append("], exact scale factor: ");
                    sbB.append(fB);
                    sbB.append(", power of 2 sample size: ");
                    sbB.append(i21);
                    sbB.append(", adjusted scale factor: ");
                    sbB.append(dB);
                    str3 = ", target density: ";
                    sbB.append(str3);
                    sbB.append(options.inTargetDensity);
                    str2 = ", density: ";
                    sbB.append(str2);
                    sbB.append(options.inDensity);
                    Log.v(str6, sbB.toString());
                } else {
                    str2 = r11;
                    str3 = r12;
                    i16 = i27;
                    i14 = i26;
                }
            }
            tVar2 = tVar;
            dB = mVar.b(iRound2, iFloor, i12, i15);
            int iE3 = e(dB);
            int i33 = (int) ((((double) iE3) * dB) + 0.5d);
            i21 = iMax;
            i22 = iFloor;
            options.inTargetDensity = (int) (((dB / ((double) (i33 / iE3))) * ((double) i33)) + 0.5d);
            int iE4 = e(dB);
            options.inDensity = iE4;
            i23 = options.inTargetDensity;
            if (i23 > 0) {
                z12 = false;
            } else {
                z12 = false;
            }
            if (z12) {
                options.inScaled = true;
            } else {
                options.inTargetDensity = 0;
                options.inDensity = 0;
            }
            str6 = "Downsampler";
            if (Log.isLoggable(str6, 2)) {
                i16 = i27;
                i14 = i26;
                StringBuilder sbB2 = androidx.recyclerview.widget.s.b("Calculate scaling, source: [", i14, "x", i16, "], degreesToRotate: ");
                a1.d.e(sbB2, i28, ", target: [", i12, "x");
                a1.d.e(sbB2, i15, "], power of two scaled: [", iRound2, "x");
                sbB2.append(i22);
                sbB2.append("], exact scale factor: ");
                sbB2.append(fB);
                sbB2.append(", power of 2 sample size: ");
                sbB2.append(i21);
                sbB2.append(", adjusted scale factor: ");
                sbB2.append(dB);
                str3 = ", target density: ";
                sbB2.append(str3);
                sbB2.append(options.inTargetDensity);
                str2 = ", density: ";
                sbB2.append(str2);
                sbB2.append(options.inDensity);
                Log.v(str6, sbB2.toString());
            } else {
                str2 = r11;
                str3 = r12;
                i16 = i27;
                i14 = i26;
            }
        }
        String str7 = str6;
        boolean z14 = false;
        int i34 = i15;
        int i35 = i12;
        String str8 = str;
        int i36 = i14;
        if (this.f18475e.c(i12, i34, options, z13, zE)) {
            str4 = "x";
        } else {
            str4 = "x";
            if (bVar != p2.b.PREFER_ARGB_8888) {
                try {
                    zHasAlpha = tVar.d().hasAlpha();
                } catch (IOException e10) {
                    if (Log.isLoggable(str7, 3)) {
                        Log.d(str7, "Cannot determine whether the image has alpha or not from header, format " + bVar, e10);
                    }
                    zHasAlpha = false;
                }
                Bitmap.Config config2 = zHasAlpha ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
                options.inPreferredConfig = config2;
                if (config2 == Bitmap.Config.RGB_565) {
                    options.inDither = true;
                }
            } else {
                options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            }
        }
        int i37 = Build.VERSION.SDK_INT;
        int i38 = options.inSampleSize;
        if (i36 < 0 || i16 < 0 || !z11) {
            int i39 = options.inTargetDensity;
            float f14 = i39 > 0 && (i18 = options.inDensity) > 0 && i39 != i18 ? i39 / options.inDensity : 1.0f;
            float f15 = i38;
            int iCeil = (int) Math.ceil(i36 / f15);
            int iCeil2 = (int) Math.ceil(i16 / f15);
            iRound = Math.round(iCeil * f14);
            int iRound3 = Math.round(iCeil2 * f14);
            if (Log.isLoggable(str7, 2)) {
                StringBuilder sbB3 = androidx.recyclerview.widget.s.b("Calculated target [", iRound, str4, iRound3, "] for source [");
                a1.d.e(sbB3, i36, str4, i16, "], sampleSize: ");
                sbB3.append(i38);
                sbB3.append(", targetDensity: ");
                sbB3.append(options.inTargetDensity);
                sbB3.append(str2);
                sbB3.append(options.inDensity);
                sbB3.append(", density multiplier: ");
                sbB3.append(f14);
                Log.v(str7, sbB3.toString());
            }
            i17 = iRound3;
        } else {
            i17 = i34;
            iRound = i35;
        }
        if (iRound > 0 && i17 > 0) {
            s2.d dVar2 = this.f18471a;
            if (i37 >= 26) {
                config = options.inPreferredConfig != Bitmap.Config.HARDWARE ? options.outConfig : null;
            }
            if (config == null) {
                config = options.inPreferredConfig;
            }
            options.inBitmap = dVar2.c(iRound, i17, config);
        }
        String str9 = str2;
        if (iVar != null) {
            if (i37 >= 28) {
                if (iVar == p2.i.DISPLAY_P3 && (colorSpace = options.outColorSpace) != null && colorSpace.isWideGamut()) {
                    z14 = true;
                }
                options.inPreferredColorSpace = ColorSpace.get(z14 ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB);
            } else if (i37 >= 26) {
                options.inPreferredColorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
            }
        }
        Bitmap bitmapC = c(tVar2, options, bVar2, this.f18471a);
        bVar2.a(this.f18471a, bitmapC);
        if (Log.isLoggable(str7, 2)) {
            StringBuilder sbC = a0.b.c("Decoded ");
            sbC.append(d(bitmapC));
            sbC.append(" from [");
            sbC.append(i36);
            sbC.append(str4);
            sbC.append(i16);
            sbC.append("] ");
            sbC.append(str8);
            sbC.append(" with inBitmap ");
            sbC.append(d(options.inBitmap));
            sbC.append(" for [");
            sbC.append(i10);
            sbC.append(str4);
            sbC.append(i11);
            sbC.append("], sample size: ");
            sbC.append(options.inSampleSize);
            sbC.append(str9);
            sbC.append(options.inDensity);
            sbC.append(str3);
            sbC.append(options.inTargetDensity);
            sbC.append(", thread: ");
            sbC.append(Thread.currentThread().getName());
            sbC.append(", duration: ");
            sbC.append(l3.h.a(jElapsedRealtimeNanos));
            Log.v(str7, sbC.toString());
        }
        if (bitmapC == null) {
            return null;
        }
        bitmapC.setDensity(this.f18472b.densityDpi);
        s2.d dVar3 = this.f18471a;
        if (a0.e(iC)) {
            Matrix matrix = new Matrix();
            switch (iC) {
                case 2:
                    matrix.setScale(-1.0f, 1.0f);
                    break;
                case 3:
                    matrix.setRotate(180.0f);
                    break;
                case 4:
                    matrix.setRotate(180.0f);
                    matrix.postScale(-1.0f, 1.0f);
                    break;
                case 5:
                    matrix.setRotate(90.0f);
                    matrix.postScale(-1.0f, 1.0f);
                    break;
                case 6:
                    matrix.setRotate(90.0f);
                    break;
                case 7:
                    matrix.setRotate(-90.0f);
                    matrix.postScale(-1.0f, 1.0f);
                    break;
                case 8:
                    matrix.setRotate(-90.0f);
                    break;
            }
            RectF rectF = new RectF(0.0f, 0.0f, bitmapC.getWidth(), bitmapC.getHeight());
            matrix.mapRect(rectF);
            Bitmap bitmapD = dVar3.d(Math.round(rectF.width()), Math.round(rectF.height()), a0.d(bitmapC));
            matrix.postTranslate(-rectF.left, -rectF.top);
            bitmapD.setHasAlpha(bitmapC.hasAlpha());
            a0.a(bitmapC, bitmapD, matrix);
            bitmap = bitmapD;
        } else {
            bitmap = bitmapC;
        }
        if (bitmapC.equals(bitmap)) {
            return bitmap;
        }
        this.f18471a.e(bitmapC);
        return bitmap;
    }
}
