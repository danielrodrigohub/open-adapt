package j2;

import androidx.fragment.app.r0;
import de.g;
import de.y;
import java.io.Closeable;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: compiled from: JsonReader.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class c implements Closeable {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String[] f9242l = new String[128];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f9243h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[] f9244i = new int[32];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String[] f9245j = new String[32];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int[] f9246k = new int[32];

    /* JADX INFO: compiled from: JsonReader.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String[] f9247a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final y f9248b;

        public a(String[] strArr, y yVar) {
            this.f9247a = strArr;
            this.f9248b = yVar;
        }

        /* JADX WARN: Code duplicated, block: B:19:0x003a A[Catch: IOException -> 0x006b, TryCatch #0 {IOException -> 0x006b, blocks: (B:2:0x0000, B:3:0x000a, B:5:0x000d, B:7:0x001e, B:9:0x0026, B:21:0x0042, B:19:0x003a, B:20:0x003d, B:23:0x0047, B:24:0x004a, B:25:0x0059), top: B:30:0x0000 }] */
        public static a a(String... strArr) {
            String str;
            try {
                g[] gVarArr = new g[strArr.length];
                de.c cVar = new de.c();
                for (int i10 = 0; i10 < strArr.length; i10++) {
                    String str2 = strArr[i10];
                    String[] strArr2 = c.f9242l;
                    cVar.y0(34);
                    int length = str2.length();
                    int i11 = 0;
                    for (int i12 = 0; i12 < length; i12++) {
                        char cCharAt = str2.charAt(i12);
                        if (cCharAt < 128) {
                            str = strArr2[cCharAt];
                            if (str != null) {
                                if (i11 < i12) {
                                    cVar.G0(str2, i11, i12);
                                }
                                cVar.F0(str);
                                i11 = i12 + 1;
                            }
                        } else {
                            if (cCharAt == 8232) {
                                str = "\\u2028";
                            } else if (cCharAt == 8233) {
                                str = "\\u2029";
                            }
                            if (i11 < i12) {
                                cVar.G0(str2, i11, i12);
                            }
                            cVar.F0(str);
                            i11 = i12 + 1;
                        }
                    }
                    if (i11 < length) {
                        cVar.G0(str2, i11, length);
                    }
                    cVar.y0(34);
                    cVar.readByte();
                    gVarArr[i10] = cVar.i();
                }
                return new a((String[]) strArr.clone(), y.f6279j.b(gVarArr));
            } catch (IOException e10) {
                throw new AssertionError(e10);
            }
        }
    }

    static {
        for (int i10 = 0; i10 <= 31; i10++) {
            f9242l[i10] = String.format("\\u%04x", Integer.valueOf(i10));
        }
        String[] strArr = f9242l;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
    }

    public abstract void Y() throws IOException;

    public abstract void f0() throws IOException;

    public abstract void g0() throws IOException;

    public final String h0() {
        int i10 = this.f9243h;
        int[] iArr = this.f9244i;
        String[] strArr = this.f9245j;
        int[] iArr2 = this.f9246k;
        StringBuilder sb2 = new StringBuilder();
        sb2.append('$');
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = iArr[i11];
            if (i12 == 1 || i12 == 2) {
                sb2.append('[');
                sb2.append(iArr2[i11]);
                sb2.append(']');
            } else if (i12 == 3 || i12 == 4 || i12 == 5) {
                sb2.append('.');
                if (strArr[i11] != null) {
                    sb2.append(strArr[i11]);
                }
            }
        }
        return sb2.toString();
    }

    public abstract boolean i0() throws IOException;

    public abstract boolean j0() throws IOException;

    public abstract double k0() throws IOException;

    public abstract int l0() throws IOException;

    public abstract String m0() throws IOException;

    public abstract String n0() throws IOException;

    public abstract int o0() throws IOException;

    public final void p0(int i10) {
        int i11 = this.f9243h;
        int[] iArr = this.f9244i;
        if (i11 == iArr.length) {
            if (i11 == 256) {
                StringBuilder sbC = a0.b.c("Nesting too deep at ");
                sbC.append(h0());
                throw new j2.a(sbC.toString());
            }
            this.f9244i = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.f9245j;
            this.f9245j = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
            int[] iArr2 = this.f9246k;
            this.f9246k = Arrays.copyOf(iArr2, iArr2.length * 2);
        }
        int[] iArr3 = this.f9244i;
        int i12 = this.f9243h;
        this.f9243h = i12 + 1;
        iArr3[i12] = i10;
    }

    public abstract int q0(a aVar) throws IOException;

    public abstract void r0() throws IOException;

    public abstract void s0() throws IOException;

    public final b t0(String str) throws b {
        StringBuilder sbH = r0.h(str, " at path ");
        sbH.append(h0());
        throw new b(sbH.toString());
    }

    public abstract void x() throws IOException;
}
