package s2;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: LruBitmapPool.java */
/* JADX INFO: loaded from: classes.dex */
public final class j implements d {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Bitmap.Config f14979j = Bitmap.Config.ARGB_8888;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k f14980a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set<Bitmap.Config> f14981b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a f14982c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f14983d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f14984e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f14985f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f14986g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f14987h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f14988i;

    /* JADX INFO: compiled from: LruBitmapPool.java */
    public static final class a {
    }

    public j(long j10) {
        m mVar = new m();
        HashSet hashSet = new HashSet(Arrays.asList(Bitmap.Config.values()));
        int i10 = Build.VERSION.SDK_INT;
        hashSet.add(null);
        if (i10 >= 26) {
            hashSet.remove(Bitmap.Config.HARDWARE);
        }
        Set<Bitmap.Config> setUnmodifiableSet = Collections.unmodifiableSet(hashSet);
        this.f14983d = j10;
        this.f14980a = mVar;
        this.f14981b = setUnmodifiableSet;
        this.f14982c = new a();
    }

    @Override // s2.d
    @SuppressLint({"InlinedApi"})
    public final void a(int i10) {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "trimMemory, level=" + i10);
        }
        if (i10 >= 40 || i10 >= 20) {
            if (Log.isLoggable("LruBitmapPool", 3)) {
                Log.d("LruBitmapPool", "clearMemory");
            }
            i(0L);
        } else if (i10 >= 20 || i10 == 15) {
            i(this.f14983d / 2);
        }
    }

    @Override // s2.d
    public final void b() {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "clearMemory");
        }
        i(0L);
    }

    @Override // s2.d
    public final Bitmap c(int i10, int i11, Bitmap.Config config) {
        Bitmap bitmapH = h(i10, i11, config);
        if (bitmapH != null) {
            return bitmapH;
        }
        if (config == null) {
            config = f14979j;
        }
        return Bitmap.createBitmap(i10, i11, config);
    }

    @Override // s2.d
    public final Bitmap d(int i10, int i11, Bitmap.Config config) {
        Bitmap bitmapH = h(i10, i11, config);
        if (bitmapH != null) {
            bitmapH.eraseColor(0);
            return bitmapH;
        }
        if (config == null) {
            config = f14979j;
        }
        return Bitmap.createBitmap(i10, i11, config);
    }

    @Override // s2.d
    public final synchronized void e(Bitmap bitmap) {
        try {
            if (bitmap == null) {
                throw new NullPointerException("Bitmap must not be null");
            }
            if (bitmap.isRecycled()) {
                throw new IllegalStateException("Cannot pool recycled bitmap");
            }
            if (bitmap.isMutable()) {
                Objects.requireNonNull((m) this.f14980a);
                if (l3.l.c(bitmap) <= this.f14983d && this.f14981b.contains(bitmap.getConfig())) {
                    Objects.requireNonNull((m) this.f14980a);
                    int iC = l3.l.c(bitmap);
                    ((m) this.f14980a).f(bitmap);
                    Objects.requireNonNull(this.f14982c);
                    this.f14987h++;
                    this.f14984e += (long) iC;
                    if (Log.isLoggable("LruBitmapPool", 2)) {
                        Log.v("LruBitmapPool", "Put bitmap in pool=" + ((m) this.f14980a).e(bitmap));
                    }
                    f();
                    i(this.f14983d);
                    return;
                }
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                Log.v("LruBitmapPool", "Reject bitmap from pool, bitmap: " + ((m) this.f14980a).e(bitmap) + ", is mutable: " + bitmap.isMutable() + ", is allowed config: " + this.f14981b.contains(bitmap.getConfig()));
            }
            bitmap.recycle();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void f() {
        if (Log.isLoggable("LruBitmapPool", 2)) {
            g();
        }
    }

    public final void g() {
        StringBuilder sbC = a0.b.c("Hits=");
        sbC.append(this.f14985f);
        sbC.append(", misses=");
        sbC.append(this.f14986g);
        sbC.append(", puts=");
        sbC.append(this.f14987h);
        sbC.append(", evictions=");
        sbC.append(this.f14988i);
        sbC.append(", currentSize=");
        sbC.append(this.f14984e);
        sbC.append(", maxSize=");
        sbC.append(this.f14983d);
        sbC.append("\nStrategy=");
        sbC.append(this.f14980a);
        Log.v("LruBitmapPool", sbC.toString());
    }

    public final synchronized Bitmap h(int i10, int i11, Bitmap.Config config) {
        Bitmap bitmapB;
        if (Build.VERSION.SDK_INT >= 26 && config == Bitmap.Config.HARDWARE) {
            throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
        }
        bitmapB = ((m) this.f14980a).b(i10, i11, config != null ? config : f14979j);
        if (bitmapB == null) {
            if (Log.isLoggable("LruBitmapPool", 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Missing bitmap=");
                Objects.requireNonNull((m) this.f14980a);
                sb2.append(m.c(l3.l.d(config) * i10 * i11, config));
                Log.d("LruBitmapPool", sb2.toString());
            }
            this.f14986g++;
        } else {
            this.f14985f++;
            long j10 = this.f14984e;
            Objects.requireNonNull((m) this.f14980a);
            this.f14984e = j10 - ((long) l3.l.c(bitmapB));
            Objects.requireNonNull(this.f14982c);
            bitmapB.setHasAlpha(true);
            bitmapB.setPremultiplied(true);
        }
        if (Log.isLoggable("LruBitmapPool", 2)) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Get bitmap=");
            Objects.requireNonNull((m) this.f14980a);
            sb3.append(m.c(l3.l.d(config) * i10 * i11, config));
            Log.v("LruBitmapPool", sb3.toString());
        }
        f();
        return bitmapB;
    }

    public final synchronized void i(long j10) {
        while (this.f14984e > j10) {
            m mVar = (m) this.f14980a;
            Bitmap bitmapD = mVar.f14995b.d();
            if (bitmapD != null) {
                mVar.a(Integer.valueOf(l3.l.c(bitmapD)), bitmapD);
            }
            if (bitmapD == null) {
                if (Log.isLoggable("LruBitmapPool", 5)) {
                    Log.w("LruBitmapPool", "Size mismatch, resetting");
                    g();
                }
                this.f14984e = 0L;
                return;
            }
            Objects.requireNonNull(this.f14982c);
            long j11 = this.f14984e;
            Objects.requireNonNull((m) this.f14980a);
            this.f14984e = j11 - ((long) l3.l.c(bitmapD));
            this.f14988i++;
            if (Log.isLoggable("LruBitmapPool", 3)) {
                Log.d("LruBitmapPool", "Evicting bitmap=" + ((m) this.f14980a).e(bitmapD));
            }
            f();
            bitmapD.recycle();
        }
    }
}
