package c3;

import android.content.Context;
import android.os.Vibrator;
import android.util.Log;
import androidx.lifecycle.o;
import ea.s;
import ea.u;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Objects;
import java.util.Set;
import p2.k;
import r2.w;

/* JADX INFO: compiled from: GifDrawableEncoder.java */
/* JADX INFO: loaded from: classes.dex */
public class d implements k, s3.j {
    public static void a(boolean z10) {
        if (!z10) {
            throw new IllegalArgumentException();
        }
    }

    public static void e(boolean z10, String str) {
        if (!z10) {
            throw new IllegalArgumentException(str);
        }
    }

    public static int f(int i10) {
        if (i10 >= 0) {
            return i10;
        }
        throw new IllegalArgumentException();
    }

    public static Object g(Object obj) {
        Objects.requireNonNull(obj, "Argument must not be null");
        return obj;
    }

    public static Object h(Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(String.valueOf(obj2));
    }

    public static void i(l5.j jVar) {
        if (jVar != null) {
            try {
                jVar.close();
            } catch (IOException unused) {
            }
        }
    }

    public static final long k(long j10) {
        long j11 = (j10 << 1) + 1;
        zd.a.C0338a c0338a = zd.a.f19479i;
        int i10 = zd.b.f19483a;
        return j11;
    }

    public static final long l(long j10) {
        long j11 = j10 << 1;
        zd.a.C0338a c0338a = zd.a.f19479i;
        int i10 = zd.b.f19483a;
        return j11;
    }

    public static final ea.c m(u uVar, int i10) {
        ea.i iVar = new ea.i(new ea.h.a(uVar.f6695a), i10);
        s sVar = uVar.f6696b.f6697a;
        return new ea.c(iVar, new ea.d(sVar.f6687a, sVar.f6688b, sVar.f6689c, 5));
    }

    public static final byte[] n(File file) throws IOException {
        p4.h.j(file, "<this>");
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            long length = file.length();
            if (length > 2147483647L) {
                throw new OutOfMemoryError("File " + file + " is too big (" + length + " bytes) to fit in memory.");
            }
            int i10 = (int) length;
            byte[] bArrCopyOf = new byte[i10];
            int i11 = i10;
            int i12 = 0;
            while (i11 > 0) {
                int i13 = fileInputStream.read(bArrCopyOf, i12, i11);
                if (i13 < 0) {
                    break;
                }
                i11 -= i13;
                i12 += i13;
            }
            if (i11 > 0) {
                bArrCopyOf = Arrays.copyOf(bArrCopyOf, i12);
                p4.h.i(bArrCopyOf, "copyOf(this, newSize)");
            } else {
                int i14 = fileInputStream.read();
                if (i14 != -1) {
                    pd.a aVar = new pd.a();
                    aVar.write(i14);
                    o.h(fileInputStream, aVar);
                    int size = aVar.size() + i10;
                    if (size < 0) {
                        throw new OutOfMemoryError("File " + file + " is too big to fit in memory.");
                    }
                    byte[] bArrX = aVar.x();
                    bArrCopyOf = Arrays.copyOf(bArrCopyOf, size);
                    p4.h.i(bArrCopyOf, "copyOf(this, newSize)");
                    gd.g.j(bArrX, bArrCopyOf, i10, 0, aVar.size());
                }
            }
            d3.e.d(fileInputStream, null);
            return bArrCopyOf;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                d3.e.d(fileInputStream, th);
                throw th2;
            }
        }
    }

    public static final Set o(Object obj) {
        Set setSingleton = Collections.singleton(obj);
        p4.h.i(setSingleton, "singleton(element)");
        return setSingleton;
    }

    public static final long q(int i10, zd.c cVar) {
        p4.h.j(cVar, "unit");
        if (cVar.compareTo(zd.c.SECONDS) <= 0) {
            return l(d3.e.f(i10, cVar, zd.c.NANOSECONDS));
        }
        long j10 = i10;
        zd.c cVar2 = zd.c.NANOSECONDS;
        long jF = d3.e.f(4611686018426999999L, cVar2, cVar);
        if (new vd.h(-jF, jF).n(j10)) {
            return l(d3.e.f(j10, cVar, cVar2));
        }
        zd.c cVar3 = zd.c.MILLISECONDS;
        p4.h.j(cVar3, "targetUnit");
        return k(androidx.activity.k.a(cVar3.f19491h.convert(j10, cVar.f19491h)));
    }

    public static final void r(Context context, long j10) {
        p4.h.j(context, "<this>");
        Vibrator vibrator = (Vibrator) context.getSystemService(Vibrator.class);
        if (vibrator != null) {
            vibrator.vibrate(j10);
        }
    }

    public static final void s(File file, byte[] bArr) throws IOException {
        p4.h.j(file, "<this>");
        p4.h.j(bArr, "array");
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            fileOutputStream.write(bArr);
            d3.e.d(fileOutputStream, null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                d3.e.d(fileOutputStream, th);
                throw th2;
            }
        }
    }

    @Override // s3.j
    public void b() {
    }

    @Override // p2.d
    public boolean c(Object obj, File file, p2.h hVar) throws Throwable {
        try {
            l3.a.d(((c) ((w) obj).get()).f3835h.f3845a.f3847a.g().asReadOnlyBuffer(), file);
            return true;
        } catch (IOException e10) {
            if (Log.isLoggable("GifEncoder", 5)) {
                Log.w("GifEncoder", "Failed to encode GIF drawable data", e10);
            }
            return false;
        }
    }

    @Override // p2.k
    public p2.c d(p2.h hVar) {
        return p2.c.SOURCE;
    }

    @Override // s3.j
    public void j(s3.u uVar) {
    }

    @Override // s3.j
    public s3.w p(int i10, int i11) {
        return new s3.g();
    }
}
