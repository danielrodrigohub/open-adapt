package p4;

import android.app.Activity;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.nike.adapt.analytics.TrackManager;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ConcurrentSkipListMap;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: compiled from: DefaultCompositeSequenceableLoaderFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class h implements g7.q, v9.m0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final h f13011h = new h();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Object[] f13012i = new Object[0];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f13013j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static volatile h2.f f13014k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static volatile h2.e f13015l;

    public static Throwable A(Throwable th, String str) {
        StackTraceElement[] stackTrace = th.getStackTrace();
        int length = stackTrace.length;
        int i10 = -1;
        for (int i11 = 0; i11 < length; i11++) {
            if (str.equals(stackTrace[i11].getClassName())) {
                i10 = i11;
            }
        }
        th.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i10 + 1, length));
        return th;
    }

    public static String B(String str, Object obj) {
        return str + obj;
    }

    public static void C(String str) {
        fd.n nVar = new fd.n(a0.d.c("lateinit property ", str, " has not been initialized"));
        A(nVar, h.class.getName());
        throw nVar;
    }

    public static final Object[] D(Collection collection) {
        j(collection, "collection");
        int size = collection.size();
        if (size != 0) {
            Iterator it = collection.iterator();
            if (it.hasNext()) {
                Object[] objArrCopyOf = new Object[size];
                int i10 = 0;
                while (true) {
                    int i11 = i10 + 1;
                    objArrCopyOf[i10] = it.next();
                    if (i11 >= objArrCopyOf.length) {
                        if (!it.hasNext()) {
                            return objArrCopyOf;
                        }
                        int i12 = ((i11 * 3) + 1) >>> 1;
                        if (i12 <= i11) {
                            if (i11 >= 2147483645) {
                                throw new OutOfMemoryError();
                            }
                            i12 = 2147483645;
                        }
                        objArrCopyOf = Arrays.copyOf(objArrCopyOf, i12);
                        i(objArrCopyOf, "copyOf(result, newSize)");
                    } else if (!it.hasNext()) {
                        Object[] objArrCopyOf2 = Arrays.copyOf(objArrCopyOf, i11);
                        i(objArrCopyOf2, "copyOf(result, size)");
                        return objArrCopyOf2;
                    }
                    i10 = i11;
                }
            }
        }
        return f13012i;
    }

    public static final Object[] E(Collection collection, Object[] objArr) {
        Object[] objArrCopyOf;
        j(collection, "collection");
        Objects.requireNonNull(objArr);
        int size = collection.size();
        int i10 = 0;
        if (size == 0) {
            if (objArr.length <= 0) {
                return objArr;
            }
            objArr[0] = null;
            return objArr;
        }
        Iterator it = collection.iterator();
        if (!it.hasNext()) {
            if (objArr.length <= 0) {
                return objArr;
            }
            objArr[0] = null;
            return objArr;
        }
        if (size <= objArr.length) {
            objArrCopyOf = objArr;
        } else {
            Object objNewInstance = Array.newInstance(objArr.getClass().getComponentType(), size);
            h(objNewInstance, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            objArrCopyOf = (Object[]) objNewInstance;
        }
        while (true) {
            int i11 = i10 + 1;
            objArrCopyOf[i10] = it.next();
            if (i11 >= objArrCopyOf.length) {
                if (!it.hasNext()) {
                    return objArrCopyOf;
                }
                int i12 = ((i11 * 3) + 1) >>> 1;
                if (i12 <= i11) {
                    if (i11 >= 2147483645) {
                        throw new OutOfMemoryError();
                    }
                    i12 = 2147483645;
                }
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, i12);
                i(objArrCopyOf, "copyOf(result, newSize)");
            } else if (!it.hasNext()) {
                if (objArrCopyOf == objArr) {
                    objArr[i11] = null;
                    return objArr;
                }
                Object[] objArrCopyOf2 = Arrays.copyOf(objArrCopyOf, i11);
                i(objArrCopyOf2, "copyOf(result, size)");
                return objArrCopyOf2;
            }
            i10 = i11;
        }
    }

    public static final fd.k F(String str) {
        j(str, "<this>");
        d3.e.c(10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i10 = 0;
        char cCharAt = str.charAt(0);
        int i11 = 1;
        if (l(cCharAt, 48) >= 0) {
            i11 = 0;
        } else if (length == 1 || cCharAt != '+') {
            return null;
        }
        int i12 = 119304647;
        while (i11 < length) {
            int iDigit = Character.digit((int) str.charAt(i11), 10);
            if (iDigit < 0) {
                return null;
            }
            if (g7.c.g(i10, i12) > 0) {
                if (i12 == 119304647) {
                    i12 = (int) ((((long) (-1)) & 4294967295L) / (4294967295L & ((long) 10)));
                    if (g7.c.g(i10, i12) > 0) {
                    }
                }
                return null;
            }
            int i13 = i10 * 10;
            int i14 = iDigit + i13;
            if (g7.c.g(i14, i13) < 0) {
                return null;
            }
            i11++;
            i10 = i14;
        }
        return new fd.k(i10);
    }

    public static final fd.l G(String str) {
        int i10;
        j(str, "<this>");
        int i11 = 10;
        d3.e.c(10);
        int length = str.length();
        if (length != 0) {
            char cCharAt = str.charAt(0);
            if (l(cCharAt, 48) >= 0) {
                i10 = 0;
            } else if (length != 1 && cCharAt == '+') {
                i10 = 1;
            }
            long j10 = 10;
            long j11 = 0;
            long j12 = 512409557603043100L;
            while (i10 < length) {
                int iDigit = Character.digit((int) str.charAt(i10), i11);
                if (iDigit >= 0) {
                    if (g7.c.h(j11, j12) > 0) {
                        if (j12 == 512409557603043100L) {
                            if (j10 < 0) {
                                j12 = g7.c.h(-1L, j10) < 0 ? 0L : 1L;
                            } else {
                                long j13 = (Long.MAX_VALUE / j10) << 1;
                                j12 = j13 + ((long) (g7.c.h((-1) - (j13 * j10), j10) >= 0 ? 1 : 0));
                            }
                            if (g7.c.h(j11, j12) > 0) {
                            }
                        }
                    }
                    long j14 = j11 * j10;
                    long j15 = (((long) iDigit) & 4294967295L) + j14;
                    if (g7.c.h(j15, j14) >= 0) {
                        i10++;
                        j11 = j15;
                        length = length;
                        i11 = 10;
                    }
                }
            }
            return new fd.l(j11);
        }
        return null;
    }

    public static final void b(Throwable th, Throwable th2) {
        j(th, "<this>");
        j(th2, "exception");
        if (th != th2) {
            md.b.f11125a.a(th, th2);
        }
    }

    public static boolean c(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static List d(byte[] bArr) {
        long j10 = (((long) (((bArr[11] & 255) << 8) | (bArr[10] & 255))) * 1000000000) / 48000;
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(bArr);
        arrayList.add(e(j10));
        arrayList.add(e(80000000L));
        return arrayList;
    }

    public static byte[] e(long j10) {
        return ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(j10).array();
    }

    public static void f(Object obj, String str) {
        if (obj != null) {
            return;
        }
        IllegalStateException illegalStateException = new IllegalStateException(androidx.recyclerview.widget.d.c(str, " must not be null"));
        A(illegalStateException, h.class.getName());
        throw illegalStateException;
    }

    public static void g(Object obj) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException();
        A(nullPointerException, h.class.getName());
        throw nullPointerException;
    }

    public static void h(Object obj, String str) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(str);
        A(nullPointerException, h.class.getName());
        throw nullPointerException;
    }

    public static void i(Object obj, String str) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(androidx.recyclerview.widget.d.c(str, " must not be null"));
        A(nullPointerException, h.class.getName());
        throw nullPointerException;
    }

    public static void j(Object obj, String str) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(m(str));
        A(nullPointerException, h.class.getName());
        throw nullPointerException;
    }

    public static void k(Object obj, String str) {
        if (obj != null) {
            return;
        }
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException(m(str));
        A(illegalArgumentException, h.class.getName());
        throw illegalArgumentException;
    }

    public static int l(int i10, int i11) {
        if (i10 < i11) {
            return -1;
        }
        return i10 == i11 ? 0 : 1;
    }

    public static String m(String str) {
        StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[4];
        StringBuilder sbA = k1.a.a("Parameter specified as non-null is null: method ", stackTraceElement.getClassName(), ".", stackTraceElement.getMethodName(), ", parameter ");
        sbA.append(str);
        return sbA.toString();
    }

    public static byte[] n(String str) {
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException("Expected a string of even length");
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = i10 * 2;
            int iDigit = Character.digit(str.charAt(i11), 16);
            int iDigit2 = Character.digit(str.charAt(i11 + 1), 16);
            if (iDigit == -1 || iDigit2 == -1) {
                throw new IllegalArgumentException("input is not hexadecimal");
            }
            bArr[i10] = (byte) ((iDigit * 16) + iDigit2);
        }
        return bArr;
    }

    public static String o(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder(bArr.length * 2);
        for (byte b10 : bArr) {
            int i10 = b10 & 255;
            sb2.append("0123456789abcdef".charAt(i10 / 16));
            sb2.append("0123456789abcdef".charAt(i10 % 16));
        }
        return sb2.toString();
    }

    public static void p() {
        int i10 = f13013j;
        if (i10 > 0) {
            f13013j = i10 - 1;
        }
    }

    public static final int q(float[] fArr, float f10) {
        j(fArr, "<this>");
        int i10 = 0;
        float fAbs = Math.abs(fArr[0] - f10);
        int length = fArr.length;
        for (int i11 = 1; i11 < length; i11++) {
            float fAbs2 = Math.abs(fArr[i11] - f10);
            if (fAbs2 < fAbs) {
                i10 = i11;
                fAbs = fAbs2;
            }
        }
        return i10;
    }

    public static l5.m r(int i10) {
        return new l5.m(Uri.parse(m5.g0.m("%s:%d", "rtp://0.0.0.0", Integer.valueOf(i10))));
    }

    public static long s(byte[] bArr) {
        long j10;
        byte b10;
        if (ByteOrder.LITTLE_ENDIAN == ByteOrder.BIG_ENDIAN) {
            j10 = (((long) bArr[4]) & 255) | ((((long) bArr[3]) << 8) & WebSocketProtocol.PAYLOAD_SHORT_MAX) | ((((long) bArr[2]) << 16) & 16777215) | ((((long) bArr[2]) << 24) & 4294967295L);
            b10 = bArr[0];
        } else {
            j10 = (((long) bArr[0]) & 255) | ((((long) bArr[1]) << 8) & WebSocketProtocol.PAYLOAD_SHORT_MAX) | ((((long) bArr[2]) << 16) & 16777215) | ((((long) bArr[3]) << 24) & 4294967295L);
            b10 = bArr[4];
        }
        return j10 | ((((long) b10) << 32) & 1099511627775L);
    }

    public static final void t(w8.a aVar, Activity activity, boolean z10) {
        androidx.appcompat.app.d dVarC;
        j(aVar, "<this>");
        j(activity, "activity");
        androidx.appcompat.app.d dVarC2 = aVar.c();
        if (dVarC2 != null && dVarC2.isShowing()) {
            return;
        }
        if (aVar.c() == null) {
            aVar.s(s9.y.e(activity, false, w8.d.f17244h, z10 ? new w8.e(activity) : null, 2));
        } else if (!activity.isFinishing() && (dVarC = aVar.c()) != null) {
            dVarC.show();
        }
        TrackManager trackManager = TrackManager.INSTANCE;
        trackManager.gesturesCriticalBatteryErrorPresented();
        trackManager.gesturesFailedToEnableErrorPresented();
    }

    public static final void u(w8.a aVar, Activity activity, boolean z10) {
        androidx.appcompat.app.d dVarU;
        j(aVar, "<this>");
        j(activity, "activity");
        androidx.appcompat.app.d dVarU2 = aVar.u();
        if (dVarU2 != null && dVarU2.isShowing()) {
            return;
        }
        if (aVar.u() == null) {
            aVar.h(s9.y.f(activity, false, w8.d.f17244h, z10 ? new w8.e(activity) : null, 2));
        } else if (!activity.isFinishing() && (dVarU = aVar.u()) != null) {
            dVarU.show();
        }
        TrackManager.INSTANCE.gesturesFailedToEnableErrorPresented();
    }

    public static final Iterator v(Object[] objArr) {
        j(objArr, "array");
        return new rd.a(objArr);
    }

    public static final List w(ea.m mVar) {
        j(mVar, "<this>");
        return new v9.l(mVar).c().e0();
    }

    public static void x(n3.r rVar, qd.a aVar) {
        Handler handler = new Handler(Looper.getMainLooper());
        handler.post(new w8.f(aVar, handler));
    }

    public static final List y(List list) {
        j(list, "<this>");
        List listN0 = gd.n.n0(list);
        ArrayList arrayList = (ArrayList) listN0;
        if (arrayList.size() > 1) {
            gd.k.V(listN0, new fb.g());
        }
        if (arrayList.size() > 1) {
            gd.k.V(listN0, new fb.h());
        }
        if (arrayList.size() > 1) {
            gd.k.V(listN0, new fb.f());
        }
        return listN0;
    }

    public static void z() {
        throw new UnsupportedOperationException("This function has a reified type parameter and thus can only be inlined at compilation time, not called directly.");
    }

    @Override // v9.m0
    public void a() {
    }

    @Override // g7.q
    public Object construct() {
        return new ConcurrentSkipListMap();
    }
}
