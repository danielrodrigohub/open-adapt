package c3;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.util.Log;
import androidx.recyclerview.widget.s;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.Queue;
import l3.l;
import r2.w;

/* JADX INFO: compiled from: ByteBufferGifDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements p2.j<ByteBuffer, c> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final C0071a f3825f = new C0071a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final b f3826g = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f3827a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List<ImageHeaderParser> f3828b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final b f3829c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0071a f3830d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final c3.b f3831e;

    /* JADX INFO: renamed from: c3.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ByteBufferGifDecoder.java */
    public static class C0071a {
    }

    /* JADX INFO: compiled from: ByteBufferGifDecoder.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Queue<n2.d> f3832a;

        public b() {
            char[] cArr = l.f9945a;
            this.f3832a = new ArrayDeque(0);
        }
    }

    public a(Context context, List<ImageHeaderParser> list, s2.d dVar, s2.b bVar) {
        b bVar2 = f3826g;
        C0071a c0071a = f3825f;
        this.f3827a = context.getApplicationContext();
        this.f3828b = list;
        this.f3830d = c0071a;
        this.f3831e = new c3.b(dVar, bVar);
        this.f3829c = bVar2;
    }

    public static int d(n2.c cVar, int i10, int i11) {
        int iMin = Math.min(cVar.f11189g / i11, cVar.f11188f / i10);
        int iMax = Math.max(1, iMin == 0 ? 0 : Integer.highestOneBit(iMin));
        if (Log.isLoggable("BufferGifDecoder", 2) && iMax > 1) {
            StringBuilder sbB = s.b("Downsampling GIF, sampleSize: ", iMax, ", target dimens: [", i10, "x");
            sbB.append(i11);
            sbB.append("], actual dimens: [");
            sbB.append(cVar.f11188f);
            sbB.append("x");
            sbB.append(cVar.f11189g);
            sbB.append("]");
            Log.v("BufferGifDecoder", sbB.toString());
        }
        return iMax;
    }

    @Override // p2.j
    public final boolean a(ByteBuffer byteBuffer, p2.h hVar) throws IOException {
        return !((Boolean) hVar.c(i.f3871b)).booleanValue() && com.bumptech.glide.load.c.d(this.f3828b, byteBuffer) == ImageHeaderParser.ImageType.GIF;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayDeque, java.util.Queue<n2.d>] */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.util.ArrayDeque, java.util.Queue<n2.d>] */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.util.ArrayDeque, java.util.Queue<n2.d>] */
    @Override // p2.j
    public final w<c> b(ByteBuffer byteBuffer, int i10, int i11, p2.h hVar) throws IOException {
        n2.d dVar;
        ByteBuffer byteBuffer2 = byteBuffer;
        b bVar = this.f3829c;
        synchronized (bVar) {
            n2.d dVar2 = (n2.d) bVar.f3832a.poll();
            if (dVar2 == null) {
                dVar2 = new n2.d();
            }
            dVar = dVar2;
            dVar.f11195b = null;
            Arrays.fill(dVar.f11194a, (byte) 0);
            dVar.f11196c = new n2.c();
            dVar.f11197d = 0;
            ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer2.asReadOnlyBuffer();
            dVar.f11195b = byteBufferAsReadOnlyBuffer;
            byteBufferAsReadOnlyBuffer.position(0);
            dVar.f11195b.order(ByteOrder.LITTLE_ENDIAN);
        }
        try {
            e eVarC = c(byteBuffer2, i10, i11, dVar, hVar);
            b bVar2 = this.f3829c;
            synchronized (bVar2) {
                dVar.f11195b = null;
                dVar.f11196c = null;
                bVar2.f3832a.offer(dVar);
            }
            return eVarC;
        } catch (Throwable th) {
            b bVar3 = this.f3829c;
            synchronized (bVar3) {
                dVar.f11195b = null;
                dVar.f11196c = null;
                bVar3.f3832a.offer(dVar);
                throw th;
            }
        }
    }

    public final e c(ByteBuffer byteBuffer, int i10, int i11, n2.d dVar, p2.h hVar) {
        int i12 = l3.h.f9935b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            n2.c cVarB = dVar.b();
            if (cVarB.f11185c > 0 && cVarB.f11184b == 0) {
                Bitmap.Config config = hVar.c(i.f3870a) == p2.b.PREFER_RGB_565 ? Bitmap.Config.RGB_565 : Bitmap.Config.ARGB_8888;
                int iD = d(cVarB, i10, i11);
                C0071a c0071a = this.f3830d;
                c3.b bVar = this.f3831e;
                Objects.requireNonNull(c0071a);
                n2.e eVar = new n2.e(bVar, cVarB, byteBuffer, iD);
                eVar.i(config);
                eVar.f11208k = (eVar.f11208k + 1) % eVar.f11209l.f11185c;
                Bitmap bitmapB = eVar.b();
                if (bitmapB == null) {
                    return null;
                }
                return new e(new c(this.f3827a, eVar, x2.b.f17732b, i10, i11, bitmapB));
            }
            return null;
        } finally {
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                StringBuilder sbC = a0.b.c("Decoded GIF from stream in ");
                sbC.append(l3.h.a(jElapsedRealtimeNanos));
                Log.v("BufferGifDecoder", sbC.toString());
            }
        }
    }
}
