package s0;

import android.content.res.AssetManager;
import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import androidx.appcompat.widget.e0;
import androidx.appcompat.widget.y0;
import androidx.recyclerview.widget.s;
import com.newrelic.agent.android.crash.CrashSender;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TimeZone;
import java.util.regex.Pattern;
import java.util.zip.CRC32;
import okhttp3.internal.http.HttpStatusCodesKt;

/* JADX INFO: compiled from: ExifInterface.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final String[] E;
    public static final int[] F;
    public static final byte[] G;
    public static final d H;
    public static final d[][] I;
    public static final d[] J;
    public static final HashMap<Integer, d>[] K;
    public static final HashMap<String, d>[] L;
    public static final HashSet<String> M;
    public static final HashMap<Integer, Integer> N;
    public static final Charset O;
    public static final byte[] P;
    public static final byte[] Q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public FileDescriptor f14926a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AssetManager.AssetInputStream f14927b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14928c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap<String, c>[] f14929d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Set<Integer> f14930e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ByteOrder f14931f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f14932g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f14933h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f14934i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f14935j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f14936k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f14937l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final boolean f14912m = Log.isLoggable("ExifInterface", 3);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final List<Integer> f14913n = Arrays.asList(1, 6, 3, 8);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final List<Integer> f14914o = Arrays.asList(2, 7, 4, 5);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int[] f14915p = {8, 8, 8};

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int[] f14916q = {8};

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final byte[] f14917r = {-1, -40, -1};

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final byte[] f14918s = {102, 116, 121, 112};

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final byte[] f14919t = {109, 105, 102, 49};

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final byte[] f14920u = {104, 101, 105, 99};

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final byte[] f14921v = {79, 76, 89, 77, 80, 0};

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final byte[] f14922w = {79, 76, 89, 77, 80, 85, 83, 0, 73, 73};

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final byte[] f14923x = {-119, 80, 78, 71, 13, 10, 26, 10};

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final byte[] f14924y = {101, 88, 73, 102};

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final byte[] f14925z = {73, 72, 68, 82};
    public static final byte[] A = {73, 69, 78, 68};
    public static final byte[] B = {82, 73, 70, 70};
    public static final byte[] C = {87, 69, 66, 80};
    public static final byte[] D = {69, 88, 73, 70};

    /* JADX INFO: renamed from: s0.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ExifInterface.java */
    public class C0254a extends MediaDataSource {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public long f14938h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ b f14939i;

        public C0254a(b bVar) {
            this.f14939i = bVar;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
        }

        @Override // android.media.MediaDataSource
        public final long getSize() throws IOException {
            return -1L;
        }

        @Override // android.media.MediaDataSource
        public final int readAt(long j10, byte[] bArr, int i10, int i11) throws IOException {
            if (i11 == 0) {
                return 0;
            }
            if (j10 < 0) {
                return -1;
            }
            try {
                long j11 = this.f14938h;
                if (j11 != j10) {
                    if (j11 >= 0 && j10 >= j11 + ((long) this.f14939i.available())) {
                        return -1;
                    }
                    this.f14939i.Y(j10);
                    this.f14938h = j10;
                }
                if (i11 > this.f14939i.available()) {
                    i11 = this.f14939i.available();
                }
                int i12 = this.f14939i.read(bArr, i10, i11);
                if (i12 >= 0) {
                    this.f14938h += (long) i12;
                    return i12;
                }
            } catch (IOException unused) {
            }
            this.f14938h = -1L;
            return -1;
        }
    }

    /* JADX INFO: compiled from: ExifInterface.java */
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14946a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f14947b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final byte[] f14948c;

        public c(int i10, int i11, byte[] bArr) {
            this(i10, i11, -1L, bArr);
        }

        public static c a(String str) {
            byte[] bytes = (str + (char) 0).getBytes(a.O);
            return new c(2, bytes.length, bytes);
        }

        public static c b(long j10, ByteOrder byteOrder) {
            long[] jArr = {j10};
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[a.F[4] * 1]);
            byteBufferWrap.order(byteOrder);
            for (int i10 = 0; i10 < 1; i10++) {
                byteBufferWrap.putInt((int) jArr[i10]);
            }
            return new c(4, 1, byteBufferWrap.array());
        }

        public static c c(e eVar, ByteOrder byteOrder) {
            e[] eVarArr = {eVar};
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[a.F[5] * 1]);
            byteBufferWrap.order(byteOrder);
            for (int i10 = 0; i10 < 1; i10++) {
                e eVar2 = eVarArr[i10];
                byteBufferWrap.putInt((int) eVar2.f14953a);
                byteBufferWrap.putInt((int) eVar2.f14954b);
            }
            return new c(5, 1, byteBufferWrap.array());
        }

        public static c d(int i10, ByteOrder byteOrder) {
            int[] iArr = {i10};
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[a.F[3] * 1]);
            byteBufferWrap.order(byteOrder);
            for (int i11 = 0; i11 < 1; i11++) {
                byteBufferWrap.putShort((short) iArr[i11]);
            }
            return new c(3, 1, byteBufferWrap.array());
        }

        public final double e(ByteOrder byteOrder) throws Throwable {
            Object objH = h(byteOrder);
            if (objH == null) {
                throw new NumberFormatException("NULL can't be converted to a double value");
            }
            if (objH instanceof String) {
                return Double.parseDouble((String) objH);
            }
            if (objH instanceof long[]) {
                long[] jArr = (long[]) objH;
                if (jArr.length == 1) {
                    return jArr[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (objH instanceof int[]) {
                int[] iArr = (int[]) objH;
                if (iArr.length == 1) {
                    return iArr[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (objH instanceof double[]) {
                double[] dArr = (double[]) objH;
                if (dArr.length == 1) {
                    return dArr[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (!(objH instanceof e[])) {
                throw new NumberFormatException("Couldn't find a double value");
            }
            e[] eVarArr = (e[]) objH;
            if (eVarArr.length != 1) {
                throw new NumberFormatException("There are more than one component");
            }
            e eVar = eVarArr[0];
            return eVar.f14953a / eVar.f14954b;
        }

        public final int f(ByteOrder byteOrder) throws Throwable {
            Object objH = h(byteOrder);
            if (objH == null) {
                throw new NumberFormatException("NULL can't be converted to a integer value");
            }
            if (objH instanceof String) {
                return Integer.parseInt((String) objH);
            }
            if (objH instanceof long[]) {
                long[] jArr = (long[]) objH;
                if (jArr.length == 1) {
                    return (int) jArr[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (!(objH instanceof int[])) {
                throw new NumberFormatException("Couldn't find a integer value");
            }
            int[] iArr = (int[]) objH;
            if (iArr.length == 1) {
                return iArr[0];
            }
            throw new NumberFormatException("There are more than one component");
        }

        public final String g(ByteOrder byteOrder) throws Throwable {
            Object objH = h(byteOrder);
            if (objH == null) {
                return null;
            }
            if (objH instanceof String) {
                return (String) objH;
            }
            StringBuilder sb2 = new StringBuilder();
            int i10 = 0;
            if (objH instanceof long[]) {
                long[] jArr = (long[]) objH;
                while (i10 < jArr.length) {
                    sb2.append(jArr[i10]);
                    i10++;
                    if (i10 != jArr.length) {
                        sb2.append(",");
                    }
                }
                return sb2.toString();
            }
            if (objH instanceof int[]) {
                int[] iArr = (int[]) objH;
                while (i10 < iArr.length) {
                    sb2.append(iArr[i10]);
                    i10++;
                    if (i10 != iArr.length) {
                        sb2.append(",");
                    }
                }
                return sb2.toString();
            }
            if (objH instanceof double[]) {
                double[] dArr = (double[]) objH;
                while (i10 < dArr.length) {
                    sb2.append(dArr[i10]);
                    i10++;
                    if (i10 != dArr.length) {
                        sb2.append(",");
                    }
                }
                return sb2.toString();
            }
            if (!(objH instanceof e[])) {
                return null;
            }
            e[] eVarArr = (e[]) objH;
            while (i10 < eVarArr.length) {
                sb2.append(eVarArr[i10].f14953a);
                sb2.append('/');
                sb2.append(eVarArr[i10].f14954b);
                i10++;
                if (i10 != eVarArr.length) {
                    sb2.append(",");
                }
            }
            return sb2.toString();
        }

        /* JADX WARN: Code duplicated, block: B:178:0x019e A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Not initialized variable reg: 3, insn: 0x019b: MOVE (r2 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:152:0x019b */
        public final Object h(ByteOrder byteOrder) throws Throwable {
            b bVar;
            InputStream inputStream;
            byte b10;
            byte[] bArr;
            InputStream inputStream2 = null;
            try {
                try {
                    bVar = new b(this.f14948c);
                    try {
                        bVar.f14943i = byteOrder;
                        boolean z10 = true;
                        int length = 0;
                        switch (this.f14946a) {
                            case 1:
                            case 6:
                                byte[] bArr2 = this.f14948c;
                                if (bArr2.length != 1 || bArr2[0] < 0 || bArr2[0] > 1) {
                                    String str = new String(bArr2, a.O);
                                    try {
                                        bVar.close();
                                        break;
                                    } catch (IOException e10) {
                                        Log.e("ExifInterface", "IOException occurred while closing InputStream", e10);
                                    }
                                    return str;
                                }
                                String str2 = new String(new char[]{(char) (bArr2[0] + 48)});
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e11) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e11);
                                }
                                return str2;
                            case 2:
                            case 7:
                                if (this.f14947b >= a.G.length) {
                                    int i10 = 0;
                                    while (true) {
                                        bArr = a.G;
                                        if (i10 < bArr.length) {
                                            if (this.f14948c[i10] != bArr[i10]) {
                                                z10 = false;
                                            } else {
                                                i10++;
                                            }
                                        }
                                    }
                                    if (z10) {
                                        length = bArr.length;
                                    }
                                }
                                StringBuilder sb2 = new StringBuilder();
                                while (length < this.f14947b && (b10 = this.f14948c[length]) != 0) {
                                    if (b10 >= 32) {
                                        sb2.append((char) b10);
                                    } else {
                                        sb2.append('?');
                                    }
                                    length++;
                                }
                                String string = sb2.toString();
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e12) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e12);
                                }
                                return string;
                            case 3:
                                int[] iArr = new int[this.f14947b];
                                while (length < this.f14947b) {
                                    iArr[length] = bVar.readUnsignedShort();
                                    length++;
                                }
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e13) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e13);
                                }
                                return iArr;
                            case 4:
                                long[] jArr = new long[this.f14947b];
                                while (length < this.f14947b) {
                                    jArr[length] = bVar.x();
                                    length++;
                                }
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e14) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e14);
                                }
                                return jArr;
                            case 5:
                                e[] eVarArr = new e[this.f14947b];
                                while (length < this.f14947b) {
                                    eVarArr[length] = new e(bVar.x(), bVar.x());
                                    length++;
                                }
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e15) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e15);
                                }
                                return eVarArr;
                            case 8:
                                int[] iArr2 = new int[this.f14947b];
                                while (length < this.f14947b) {
                                    iArr2[length] = bVar.readShort();
                                    length++;
                                }
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e16) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e16);
                                }
                                return iArr2;
                            case 9:
                                int[] iArr3 = new int[this.f14947b];
                                while (length < this.f14947b) {
                                    iArr3[length] = bVar.readInt();
                                    length++;
                                }
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e17) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e17);
                                }
                                return iArr3;
                            case 10:
                                e[] eVarArr2 = new e[this.f14947b];
                                while (length < this.f14947b) {
                                    eVarArr2[length] = new e(bVar.readInt(), bVar.readInt());
                                    length++;
                                }
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e18) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e18);
                                }
                                return eVarArr2;
                            case 11:
                                double[] dArr = new double[this.f14947b];
                                while (length < this.f14947b) {
                                    dArr[length] = bVar.readFloat();
                                    length++;
                                }
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e19) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e19);
                                }
                                return dArr;
                            case 12:
                                double[] dArr2 = new double[this.f14947b];
                                while (length < this.f14947b) {
                                    dArr2[length] = bVar.readDouble();
                                    length++;
                                }
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e20) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e20);
                                }
                                return dArr2;
                            default:
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e21) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e21);
                                }
                                return null;
                        }
                    } catch (IOException e22) {
                        e = e22;
                        Log.w("ExifInterface", "IOException occurred during reading a value", e);
                        if (bVar != null) {
                            try {
                                bVar.close();
                            } catch (IOException e23) {
                                Log.e("ExifInterface", "IOException occurred while closing InputStream", e23);
                            }
                        }
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    inputStream2 = inputStream;
                    if (inputStream2 != null) {
                        try {
                            inputStream2.close();
                        } catch (IOException e24) {
                            Log.e("ExifInterface", "IOException occurred while closing InputStream", e24);
                        }
                    }
                    throw th;
                }
            } catch (IOException e25) {
                e = e25;
                bVar = null;
            } catch (Throwable th2) {
                th = th2;
                if (inputStream2 != null) {
                    inputStream2.close();
                }
                throw th;
            }
        }

        public final String toString() {
            StringBuilder sbC = a0.b.c("(");
            sbC.append(a.E[this.f14946a]);
            sbC.append(", data length:");
            return s.a(sbC, this.f14948c.length, ")");
        }

        public c(int i10, int i11, long j10, byte[] bArr) {
            this.f14946a = i10;
            this.f14947b = i11;
            this.f14948c = bArr;
        }
    }

    /* JADX INFO: compiled from: ExifInterface.java */
    public static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f14953a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f14954b;

        public e(long j10, long j11) {
            if (j11 == 0) {
                this.f14953a = 0L;
                this.f14954b = 1L;
            } else {
                this.f14953a = j10;
                this.f14954b = j11;
            }
        }

        public final String toString() {
            return this.f14953a + "/" + this.f14954b;
        }
    }

    static {
        "VP8X".getBytes(Charset.defaultCharset());
        "VP8L".getBytes(Charset.defaultCharset());
        "VP8 ".getBytes(Charset.defaultCharset());
        "ANIM".getBytes(Charset.defaultCharset());
        "ANMF".getBytes(Charset.defaultCharset());
        "XMP ".getBytes(Charset.defaultCharset());
        E = new String[]{"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE", "IFD"};
        F = new int[]{0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};
        G = new byte[]{65, 83, 67, 73, 73, 0, 0, 0};
        d[] dVarArr = {new d("NewSubfileType", 254, 4), new d("SubfileType", 255, 4), new d("ImageWidth", 256), new d("ImageLength", 257), new d("BitsPerSample", 258, 3), new d("Compression", 259, 3), new d("PhotometricInterpretation", 262, 3), new d("ImageDescription", 270, 2), new d("Make", 271, 2), new d("Model", 272, 2), new d("StripOffsets", 273), new d("Orientation", 274, 3), new d("SamplesPerPixel", 277, 3), new d("RowsPerStrip", 278), new d("StripByteCounts", 279), new d("XResolution", 282, 5), new d("YResolution", 283, 5), new d("PlanarConfiguration", 284, 3), new d("ResolutionUnit", 296, 3), new d("TransferFunction", HttpStatusCodesKt.HTTP_MOVED_PERM, 3), new d("Software", HttpStatusCodesKt.HTTP_USE_PROXY, 2), new d("DateTime", 306, 2), new d("Artist", 315, 2), new d("WhitePoint", 318, 5), new d("PrimaryChromaticities", 319, 5), new d("SubIFDPointer", 330, 4), new d("JPEGInterchangeFormat", 513, 4), new d("JPEGInterchangeFormatLength", 514, 4), new d("YCbCrCoefficients", 529, 5), new d("YCbCrSubSampling", 530, 3), new d("YCbCrPositioning", 531, 3), new d("ReferenceBlackWhite", 532, 5), new d("Copyright", 33432, 2), new d("ExifIFDPointer", 34665, 4), new d("GPSInfoIFDPointer", 34853, 4), new d("SensorTopBorder", 4, 4), new d("SensorLeftBorder", 5, 4), new d("SensorBottomBorder", 6, 4), new d("SensorRightBorder", 7, 4), new d("ISO", 23, 3), new d("JpgFromRaw", 46, 7), new d("Xmp", 700, 1)};
        d[] dVarArr2 = {new d("ExposureTime", 33434, 5), new d("FNumber", 33437, 5), new d("ExposureProgram", 34850, 3), new d("SpectralSensitivity", 34852, 2), new d("PhotographicSensitivity", 34855, 3), new d("OECF", 34856, 7), new d("SensitivityType", 34864, 3), new d("StandardOutputSensitivity", 34865, 4), new d("RecommendedExposureIndex", 34866, 4), new d("ISOSpeed", 34867, 4), new d("ISOSpeedLatitudeyyy", 34868, 4), new d("ISOSpeedLatitudezzz", 34869, 4), new d("ExifVersion", 36864, 2), new d("DateTimeOriginal", 36867, 2), new d("DateTimeDigitized", 36868, 2), new d("OffsetTime", 36880, 2), new d("OffsetTimeOriginal", 36881, 2), new d("OffsetTimeDigitized", 36882, 2), new d("ComponentsConfiguration", 37121, 7), new d("CompressedBitsPerPixel", 37122, 5), new d("ShutterSpeedValue", 37377, 10), new d("ApertureValue", 37378, 5), new d("BrightnessValue", 37379, 10), new d("ExposureBiasValue", 37380, 10), new d("MaxApertureValue", 37381, 5), new d("SubjectDistance", 37382, 5), new d("MeteringMode", 37383, 3), new d("LightSource", 37384, 3), new d("Flash", 37385, 3), new d("FocalLength", 37386, 5), new d("SubjectArea", 37396, 3), new d("MakerNote", 37500, 7), new d("UserComment", 37510, 7), new d("SubSecTime", 37520, 2), new d("SubSecTimeOriginal", 37521, 2), new d("SubSecTimeDigitized", 37522, 2), new d("FlashpixVersion", 40960, 7), new d("ColorSpace", 40961, 3), new d("PixelXDimension", 40962), new d("PixelYDimension", 40963), new d("RelatedSoundFile", 40964, 2), new d("InteroperabilityIFDPointer", 40965, 4), new d("FlashEnergy", 41483, 5), new d("SpatialFrequencyResponse", 41484, 7), new d("FocalPlaneXResolution", 41486, 5), new d("FocalPlaneYResolution", 41487, 5), new d("FocalPlaneResolutionUnit", 41488, 3), new d("SubjectLocation", 41492, 3), new d("ExposureIndex", 41493, 5), new d("SensingMethod", 41495, 3), new d("FileSource", 41728, 7), new d("SceneType", 41729, 7), new d("CFAPattern", 41730, 7), new d("CustomRendered", 41985, 3), new d("ExposureMode", 41986, 3), new d("WhiteBalance", 41987, 3), new d("DigitalZoomRatio", 41988, 5), new d("FocalLengthIn35mmFilm", 41989, 3), new d("SceneCaptureType", 41990, 3), new d("GainControl", 41991, 3), new d("Contrast", 41992, 3), new d("Saturation", 41993, 3), new d("Sharpness", 41994, 3), new d("DeviceSettingDescription", 41995, 7), new d("SubjectDistanceRange", 41996, 3), new d("ImageUniqueID", 42016, 2), new d("CameraOwnerName", 42032, 2), new d("BodySerialNumber", 42033, 2), new d("LensSpecification", 42034, 5), new d("LensMake", 42035, 2), new d("LensModel", 42036, 2), new d("Gamma", 42240, 5), new d("DNGVersion", 50706, 1), new d("DefaultCropSize", 50720)};
        d[] dVarArr3 = {new d("GPSVersionID", 0, 1), new d("GPSLatitudeRef", 1, 2), new d("GPSLatitude", 2, 5), new d("GPSLongitudeRef", 3, 2), new d("GPSLongitude", 4, 5), new d("GPSAltitudeRef", 5, 1), new d("GPSAltitude", 6, 5), new d("GPSTimeStamp", 7, 5), new d("GPSSatellites", 8, 2), new d("GPSStatus", 9, 2), new d("GPSMeasureMode", 10, 2), new d("GPSDOP", 11, 5), new d("GPSSpeedRef", 12, 2), new d("GPSSpeed", 13, 5), new d("GPSTrackRef", 14, 2), new d("GPSTrack", 15, 5), new d("GPSImgDirectionRef", 16, 2), new d("GPSImgDirection", 17, 5), new d("GPSMapDatum", 18, 2), new d("GPSDestLatitudeRef", 19, 2), new d("GPSDestLatitude", 20, 5), new d("GPSDestLongitudeRef", 21, 2), new d("GPSDestLongitude", 22, 5), new d("GPSDestBearingRef", 23, 2), new d("GPSDestBearing", 24, 5), new d("GPSDestDistanceRef", 25, 2), new d("GPSDestDistance", 26, 5), new d("GPSProcessingMethod", 27, 7), new d("GPSAreaInformation", 28, 7), new d("GPSDateStamp", 29, 2), new d("GPSDifferential", 30, 3), new d("GPSHPositioningError", 31, 5)};
        d[] dVarArr4 = {new d("InteroperabilityIndex", 1, 2)};
        d[] dVarArr5 = {new d("NewSubfileType", 254, 4), new d("SubfileType", 255, 4), new d("ThumbnailImageWidth", 256), new d("ThumbnailImageLength", 257), new d("BitsPerSample", 258, 3), new d("Compression", 259, 3), new d("PhotometricInterpretation", 262, 3), new d("ImageDescription", 270, 2), new d("Make", 271, 2), new d("Model", 272, 2), new d("StripOffsets", 273), new d("ThumbnailOrientation", 274, 3), new d("SamplesPerPixel", 277, 3), new d("RowsPerStrip", 278), new d("StripByteCounts", 279), new d("XResolution", 282, 5), new d("YResolution", 283, 5), new d("PlanarConfiguration", 284, 3), new d("ResolutionUnit", 296, 3), new d("TransferFunction", HttpStatusCodesKt.HTTP_MOVED_PERM, 3), new d("Software", HttpStatusCodesKt.HTTP_USE_PROXY, 2), new d("DateTime", 306, 2), new d("Artist", 315, 2), new d("WhitePoint", 318, 5), new d("PrimaryChromaticities", 319, 5), new d("SubIFDPointer", 330, 4), new d("JPEGInterchangeFormat", 513, 4), new d("JPEGInterchangeFormatLength", 514, 4), new d("YCbCrCoefficients", 529, 5), new d("YCbCrSubSampling", 530, 3), new d("YCbCrPositioning", 531, 3), new d("ReferenceBlackWhite", 532, 5), new d("Copyright", 33432, 2), new d("ExifIFDPointer", 34665, 4), new d("GPSInfoIFDPointer", 34853, 4), new d("DNGVersion", 50706, 1), new d("DefaultCropSize", 50720)};
        H = new d("StripOffsets", 273, 3);
        I = new d[][]{dVarArr, dVarArr2, dVarArr3, dVarArr4, dVarArr5, dVarArr, new d[]{new d("ThumbnailImage", 256, 7), new d("CameraSettingsIFDPointer", 8224, 4), new d("ImageProcessingIFDPointer", 8256, 4)}, new d[]{new d("PreviewImageStart", 257, 4), new d("PreviewImageLength", 258, 4)}, new d[]{new d("AspectFrame", 4371, 3)}, new d[]{new d("ColorSpace", 55, 3)}};
        J = new d[]{new d("SubIFDPointer", 330, 4), new d("ExifIFDPointer", 34665, 4), new d("GPSInfoIFDPointer", 34853, 4), new d("InteroperabilityIFDPointer", 40965, 4), new d("CameraSettingsIFDPointer", 8224, 1), new d("ImageProcessingIFDPointer", 8256, 1)};
        K = new HashMap[10];
        L = new HashMap[10];
        M = new HashSet<>(Arrays.asList("FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance", "GPSTimeStamp"));
        N = new HashMap<>();
        Charset charsetForName = Charset.forName("US-ASCII");
        O = charsetForName;
        P = "Exif\u0000\u0000".getBytes(charsetForName);
        Q = "http://ns.adobe.com/xap/1.0/\u0000".getBytes(charsetForName);
        new SimpleDateFormat("yyyy:MM:dd HH:mm:ss").setTimeZone(TimeZone.getTimeZone("UTC"));
        int i10 = 0;
        while (true) {
            d[][] dVarArr6 = I;
            if (i10 >= dVarArr6.length) {
                HashMap<Integer, Integer> map = N;
                d[] dVarArr7 = J;
                map.put(Integer.valueOf(dVarArr7[0].f14949a), 5);
                map.put(Integer.valueOf(dVarArr7[1].f14949a), 1);
                map.put(Integer.valueOf(dVarArr7[2].f14949a), 2);
                map.put(Integer.valueOf(dVarArr7[3].f14949a), 3);
                map.put(Integer.valueOf(dVarArr7[4].f14949a), 7);
                map.put(Integer.valueOf(dVarArr7[5].f14949a), 8);
                Pattern.compile(".*[1-9].*");
                Pattern.compile("^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$");
                return;
            }
            K[i10] = new HashMap<>();
            L[i10] = new HashMap<>();
            for (d dVar : dVarArr6[i10]) {
                K[i10].put(Integer.valueOf(dVar.f14949a), dVar);
                L[i10].put(dVar.f14950b, dVar);
            }
            i10++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0056  */
    public a(InputStream inputStream) throws IOException {
        boolean z10;
        d[][] dVarArr = I;
        this.f14929d = new HashMap[dVarArr.length];
        this.f14930e = new HashSet(dVarArr.length);
        this.f14931f = ByteOrder.BIG_ENDIAN;
        Objects.requireNonNull(inputStream, "inputStream cannot be null");
        if (inputStream instanceof AssetManager.AssetInputStream) {
            this.f14927b = (AssetManager.AssetInputStream) inputStream;
            this.f14926a = null;
        } else if (inputStream instanceof FileInputStream) {
            FileInputStream fileInputStream = (FileInputStream) inputStream;
            try {
                Os.lseek(fileInputStream.getFD(), 0L, OsConstants.SEEK_CUR);
                z10 = true;
            } catch (Exception unused) {
                if (f14912m) {
                    Log.d("ExifInterface", "The file descriptor for the given input is not seekable");
                }
                z10 = false;
            }
            if (z10) {
                this.f14927b = null;
                this.f14926a = fileInputStream.getFD();
            } else {
                this.f14927b = null;
                this.f14926a = null;
            }
        } else {
            this.f14927b = null;
            this.f14926a = null;
        }
        for (int i10 = 0; i10 < I.length; i10++) {
            try {
                try {
                    this.f14929d[i10] = new HashMap<>();
                } catch (IOException e10) {
                    boolean z11 = f14912m;
                    if (z11) {
                        Log.w("ExifInterface", "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface.", e10);
                    }
                    a();
                    if (!z11) {
                        return;
                    }
                }
            } catch (Throwable th) {
                a();
                if (f14912m) {
                    r();
                }
                throw th;
            }
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, CrashSender.CRASH_COLLECTOR_TIMEOUT);
        this.f14928c = h(bufferedInputStream);
        b bVar = new b(bufferedInputStream);
        switch (this.f14928c) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 5:
            case 6:
            case 8:
            case 11:
                l(bVar);
                break;
            case 4:
                g(bVar, 0, 0);
                break;
            case 7:
                i(bVar);
                break;
            case 9:
                k(bVar);
                break;
            case 10:
                m(bVar);
                break;
            case 12:
                f(bVar);
                break;
            case 13:
                j(bVar);
                break;
            case 14:
                n(bVar);
                break;
        }
        v(bVar);
        a();
        if (!f14912m) {
            return;
        }
        r();
    }

    public static String b(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder(bArr.length * 2);
        for (byte b10 : bArr) {
            sb2.append(String.format("%02x", Byte.valueOf(b10)));
        }
        return sb2.toString();
    }

    public static long[] c(Object obj) {
        if (!(obj instanceof int[])) {
            if (obj instanceof long[]) {
                return (long[]) obj;
            }
            return null;
        }
        int[] iArr = (int[]) obj;
        long[] jArr = new long[iArr.length];
        for (int i10 = 0; i10 < iArr.length; i10++) {
            jArr[i10] = iArr[i10];
        }
        return jArr;
    }

    public static boolean w(byte[] bArr, byte[] bArr2) {
        if (bArr2 == null || bArr.length < bArr2.length) {
            return false;
        }
        for (int i10 = 0; i10 < bArr2.length; i10++) {
            if (bArr[i10] != bArr2[i10]) {
                return false;
            }
        }
        return true;
    }

    public final void a() {
        String strD = d("DateTimeOriginal");
        if (strD != null && d("DateTime") == null) {
            this.f14929d[0].put("DateTime", c.a(strD));
        }
        if (d("ImageWidth") == null) {
            this.f14929d[0].put("ImageWidth", c.b(0L, this.f14931f));
        }
        if (d("ImageLength") == null) {
            this.f14929d[0].put("ImageLength", c.b(0L, this.f14931f));
        }
        if (d("Orientation") == null) {
            this.f14929d[0].put("Orientation", c.b(0L, this.f14931f));
        }
        if (d("LightSource") == null) {
            this.f14929d[1].put("LightSource", c.b(0L, this.f14931f));
        }
    }

    public final String d(String str) {
        c cVarE = e(str);
        if (cVarE != null) {
            if (!M.contains(str)) {
                return cVarE.g(this.f14931f);
            }
            if (str.equals("GPSTimeStamp")) {
                int i10 = cVarE.f14946a;
                if (i10 != 5 && i10 != 10) {
                    StringBuilder sbC = a0.b.c("GPS Timestamp format is not rational. format=");
                    sbC.append(cVarE.f14946a);
                    Log.w("ExifInterface", sbC.toString());
                    return null;
                }
                e[] eVarArr = (e[]) cVarE.h(this.f14931f);
                if (eVarArr != null && eVarArr.length == 3) {
                    return String.format("%02d:%02d:%02d", Integer.valueOf((int) (eVarArr[0].f14953a / eVarArr[0].f14954b)), Integer.valueOf((int) (eVarArr[1].f14953a / eVarArr[1].f14954b)), Integer.valueOf((int) (eVarArr[2].f14953a / eVarArr[2].f14954b)));
                }
                StringBuilder sbC2 = a0.b.c("Invalid GPS Timestamp array. array=");
                sbC2.append(Arrays.toString(eVarArr));
                Log.w("ExifInterface", sbC2.toString());
                return null;
            }
            try {
                return Double.toString(cVarE.e(this.f14931f));
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    public final c e(String str) {
        if ("ISOSpeedRatings".equals(str)) {
            if (f14912m) {
                Log.d("ExifInterface", "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY.");
            }
            str = "PhotographicSensitivity";
        }
        for (int i10 = 0; i10 < I.length; i10++) {
            c cVar = this.f14929d[i10].get(str);
            if (cVar != null) {
                return cVar;
            }
        }
        return null;
    }

    public final void f(b bVar) throws IOException {
        String strExtractMetadata;
        String strExtractMetadata2;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            mediaMetadataRetriever.setDataSource(new C0254a(bVar));
            String strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(33);
            String strExtractMetadata4 = mediaMetadataRetriever.extractMetadata(34);
            String strExtractMetadata5 = mediaMetadataRetriever.extractMetadata(26);
            String strExtractMetadata6 = mediaMetadataRetriever.extractMetadata(17);
            String strExtractMetadata7 = null;
            if ("yes".equals(strExtractMetadata5)) {
                strExtractMetadata7 = mediaMetadataRetriever.extractMetadata(29);
                strExtractMetadata = mediaMetadataRetriever.extractMetadata(30);
                strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(31);
            } else if ("yes".equals(strExtractMetadata6)) {
                strExtractMetadata7 = mediaMetadataRetriever.extractMetadata(18);
                strExtractMetadata = mediaMetadataRetriever.extractMetadata(19);
                strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(24);
            } else {
                strExtractMetadata = null;
                strExtractMetadata2 = null;
            }
            if (strExtractMetadata7 != null) {
                this.f14929d[0].put("ImageWidth", c.d(Integer.parseInt(strExtractMetadata7), this.f14931f));
            }
            if (strExtractMetadata != null) {
                this.f14929d[0].put("ImageLength", c.d(Integer.parseInt(strExtractMetadata), this.f14931f));
            }
            if (strExtractMetadata2 != null) {
                int i10 = 1;
                int i11 = Integer.parseInt(strExtractMetadata2);
                if (i11 == 90) {
                    i10 = 6;
                } else if (i11 == 180) {
                    i10 = 3;
                } else if (i11 == 270) {
                    i10 = 8;
                }
                this.f14929d[0].put("Orientation", c.d(i10, this.f14931f));
            }
            if (strExtractMetadata3 != null && strExtractMetadata4 != null) {
                int i12 = Integer.parseInt(strExtractMetadata3);
                int i13 = Integer.parseInt(strExtractMetadata4);
                if (i13 <= 6) {
                    throw new IOException("Invalid exif length");
                }
                bVar.Y(i12);
                byte[] bArr = new byte[6];
                if (bVar.read(bArr) != 6) {
                    throw new IOException("Can't read identifier");
                }
                int i14 = i12 + 6;
                int i15 = i13 - 6;
                if (!Arrays.equals(bArr, P)) {
                    throw new IOException("Invalid identifier");
                }
                byte[] bArr2 = new byte[i15];
                if (bVar.read(bArr2) != i15) {
                    throw new IOException("Can't read exif");
                }
                this.f14933h = i14;
                t(bArr2, 0);
            }
            if (f14912m) {
                Log.d("ExifInterface", "Heif meta: " + strExtractMetadata7 + "x" + strExtractMetadata + ", rotation " + strExtractMetadata2);
            }
            mediaMetadataRetriever.release();
        } catch (Throwable th) {
            mediaMetadataRetriever.release();
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00b6 A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:35:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:77:0x00e8 A[SYNTHETIC] */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1092)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:419)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:31)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:399)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:31)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:21)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    public final void g(s0.a.b r19, int r20, int r21) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 508
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: s0.a.g(s0.a$b, int, int):void");
    }

    /* JADX WARN: Code duplicated, block: B:104:0x0126  */
    /* JADX WARN: Code duplicated, block: B:105:0x0128  */
    /* JADX WARN: Code duplicated, block: B:120:0x0143 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:122:0x0146  */
    /* JADX WARN: Code duplicated, block: B:125:0x014c  */
    /* JADX WARN: Code duplicated, block: B:128:0x0154 A[LOOP:2: B:123:0x0147->B:128:0x0154, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:131:0x015a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:133:0x015d  */
    /* JADX WARN: Code duplicated, block: B:136:0x0163  */
    /* JADX WARN: Code duplicated, block: B:139:0x016a A[LOOP:3: B:134:0x015e->B:139:0x016a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:143:0x0173  */
    /* JADX WARN: Code duplicated, block: B:146:0x0180 A[LOOP:4: B:141:0x016e->B:146:0x0180, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:149:0x0186 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:151:0x0189 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:156:0x018f  */
    /* JADX WARN: Code duplicated, block: B:163:0x0111 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:169:0x00da A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:177:0x0157 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:178:0x0152 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:179:0x016d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:180:0x017e A[EDGE_INSN: B:180:0x017e->B:145:0x017e BREAK  A[LOOP:3: B:134:0x015e->B:139:0x016a], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:181:0x017e A[EDGE_INSN: B:181:0x017e->B:145:0x017e BREAK  A[LOOP:3: B:134:0x015e->B:139:0x016a], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:182:0x0183 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:0x00d7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:80:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:84:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:98:0x010f A[RETURN] */
    public final int h(BufferedInputStream bufferedInputStream) throws Throwable {
        boolean z10;
        boolean z11;
        b bVar;
        b bVar2;
        boolean z12;
        b bVar3;
        b bVar4;
        boolean z13;
        b bVar5;
        b bVar6;
        boolean z14;
        int i10;
        byte[] bArr;
        boolean z15;
        int i11;
        byte[] bArr2;
        int i12;
        byte[] bArr3;
        boolean z16;
        b bVar7;
        short s10;
        bufferedInputStream.mark(CrashSender.CRASH_COLLECTOR_TIMEOUT);
        byte[] bArr4 = new byte[CrashSender.CRASH_COLLECTOR_TIMEOUT];
        bufferedInputStream.read(bArr4);
        bufferedInputStream.reset();
        int i13 = 0;
        while (true) {
            byte[] bArr5 = f14917r;
            if (i13 >= bArr5.length) {
                z10 = true;
                break;
            }
            if (bArr4[i13] != bArr5[i13]) {
                z10 = false;
                break;
            }
            i13++;
        }
        if (z10) {
            return 4;
        }
        byte[] bytes = "FUJIFILMCCD-RAW".getBytes(Charset.defaultCharset());
        int i14 = 0;
        while (true) {
            if (i14 >= bytes.length) {
                z11 = true;
                break;
            }
            if (bArr4[i14] != bytes[i14]) {
                z11 = false;
                break;
            }
            i14++;
        }
        if (z11) {
            return 9;
        }
        try {
            bVar2 = new b(bArr4);
            try {
                long j10 = bVar2.readInt();
                byte[] bArr6 = new byte[4];
                bVar2.read(bArr6);
                if (Arrays.equals(bArr6, f14918s)) {
                    long j11 = 16;
                    if (j10 == 1) {
                        j10 = bVar2.readLong();
                        if (j10 < 16) {
                        }
                    } else {
                        j11 = 8;
                    }
                    long j12 = CrashSender.CRASH_COLLECTOR_TIMEOUT;
                    if (j10 > j12) {
                        j10 = j12;
                    }
                    long j13 = j10 - j11;
                    if (j13 >= 8) {
                        byte[] bArr7 = new byte[4];
                        long j14 = 0;
                        boolean z17 = false;
                        boolean z18 = false;
                        while (true) {
                            if (j14 < j13 / 4 && bVar2.read(bArr7) == 4) {
                                if (j14 != 1) {
                                    if (Arrays.equals(bArr7, f14919t)) {
                                        z17 = true;
                                    } else if (Arrays.equals(bArr7, f14920u)) {
                                        z18 = true;
                                    }
                                    if (z17 && z18) {
                                        bVar2.close();
                                        z12 = true;
                                    }
                                }
                                j14++;
                            }
                            if (z12) {
                                return 12;
                            }
                            try {
                                bVar4 = new b(bArr4);
                                try {
                                    ByteOrder byteOrderS = s(bVar4);
                                    this.f14931f = byteOrderS;
                                    bVar4.f14943i = byteOrderS;
                                    s10 = bVar4.readShort();
                                    if (s10 != 20306 || s10 == 21330) {
                                        z13 = true;
                                    } else {
                                        z13 = false;
                                    }
                                    bVar4.close();
                                } catch (Exception unused) {
                                    if (bVar4 != null) {
                                        bVar4.close();
                                    }
                                    z13 = false;
                                } catch (Throwable th) {
                                    th = th;
                                    bVar3 = bVar4;
                                    if (bVar3 != null) {
                                        bVar3.close();
                                    }
                                    throw th;
                                }
                            } catch (Exception unused2) {
                                bVar4 = null;
                            } catch (Throwable th2) {
                                th = th2;
                                bVar3 = null;
                            }
                            if (z13) {
                                return 7;
                            }
                            try {
                                bVar7 = new b(bArr4);
                                try {
                                    ByteOrder byteOrderS2 = s(bVar7);
                                    this.f14931f = byteOrderS2;
                                    bVar7.f14943i = byteOrderS2;
                                    if (bVar7.readShort() == 85) {
                                        z14 = true;
                                    } else {
                                        z14 = false;
                                    }
                                    bVar7.close();
                                } catch (Exception unused3) {
                                    bVar6 = bVar7;
                                    if (bVar6 != null) {
                                        bVar6.close();
                                    }
                                    z14 = false;
                                } catch (Throwable th3) {
                                    th = th3;
                                    bVar5 = bVar7;
                                    if (bVar5 != null) {
                                        bVar5.close();
                                    }
                                    throw th;
                                }
                            } catch (Exception unused4) {
                                bVar6 = null;
                            } catch (Throwable th4) {
                                th = th4;
                                bVar5 = null;
                            }
                            if (z14) {
                                return 10;
                            }
                            i10 = 0;
                            while (true) {
                                bArr = f14923x;
                                if (i10 >= bArr.length) {
                                    z15 = true;
                                    break;
                                }
                                if (bArr4[i10] != bArr[i10]) {
                                    z15 = false;
                                    break;
                                }
                                i10++;
                            }
                            if (z15) {
                                return 13;
                            }
                            i11 = 0;
                            while (true) {
                                bArr2 = B;
                                if (i11 >= bArr2.length) {
                                    i12 = 0;
                                    while (true) {
                                        bArr3 = C;
                                        if (i12 >= bArr3.length) {
                                            z16 = true;
                                        } else {
                                            if (bArr4[B.length + i12 + 4] != bArr3[i12]) {
                                                break;
                                            }
                                            i12++;
                                        }
                                        if (z16) {
                                            return 14;
                                        }
                                        return 0;
                                    }
                                }
                                if (bArr4[i11] != bArr2[i11]) {
                                    break;
                                }
                                i11++;
                            }
                            z16 = false;
                            if (z16) {
                                return 14;
                            }
                            return 0;
                        }
                    }
                }
            } catch (Exception e10) {
                e = e10;
                try {
                    if (f14912m) {
                        Log.d("ExifInterface", "Exception parsing HEIF file type box.", e);
                    }
                    if (bVar2 != null) {
                    }
                    z12 = false;
                    if (z12) {
                        return 12;
                    }
                    bVar4 = new b(bArr4);
                    ByteOrder byteOrderS3 = s(bVar4);
                    this.f14931f = byteOrderS3;
                    bVar4.f14943i = byteOrderS3;
                    s10 = bVar4.readShort();
                    if (s10 != 20306) {
                        z13 = true;
                    } else {
                        z13 = true;
                    }
                    bVar4.close();
                    if (z13) {
                        return 7;
                    }
                    bVar7 = new b(bArr4);
                    ByteOrder byteOrderS4 = s(bVar7);
                    this.f14931f = byteOrderS4;
                    bVar7.f14943i = byteOrderS4;
                    if (bVar7.readShort() == 85) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    bVar7.close();
                    if (z14) {
                        return 10;
                    }
                    i10 = 0;
                    while (true) {
                        bArr = f14923x;
                        if (i10 >= bArr.length) {
                            z15 = true;
                            break;
                        }
                        if (bArr4[i10] != bArr[i10]) {
                            z15 = false;
                            break;
                        }
                        i10++;
                    }
                    if (z15) {
                        return 13;
                    }
                    i11 = 0;
                    while (true) {
                        bArr2 = B;
                        if (i11 >= bArr2.length) {
                            i12 = 0;
                            while (true) {
                                bArr3 = C;
                                if (i12 >= bArr3.length) {
                                    z16 = true;
                                } else {
                                    if (bArr4[B.length + i12 + 4] != bArr3[i12]) {
                                        break;
                                        break;
                                    }
                                    i12++;
                                }
                                if (z16) {
                                    return 14;
                                }
                                return 0;
                            }
                        }
                        if (bArr4[i11] != bArr2[i11]) {
                            break;
                            break;
                        }
                        i11++;
                    }
                    z16 = false;
                    if (z16) {
                        return 14;
                    }
                    return 0;
                } catch (Throwable th5) {
                    th = th5;
                    bVar = bVar2;
                    bVar2 = bVar;
                    if (bVar2 != null) {
                        bVar2.close();
                    }
                    throw th;
                }
            } catch (Throwable th6) {
                th = th6;
                if (bVar2 != null) {
                    bVar2.close();
                }
                throw th;
            }
        } catch (Exception e11) {
            e = e11;
            bVar2 = null;
        } catch (Throwable th7) {
            th = th7;
            bVar = null;
            bVar2 = bVar;
            if (bVar2 != null) {
                bVar2.close();
            }
            throw th;
        }
        bVar2.close();
        z12 = false;
        if (z12) {
            return 12;
        }
        bVar4 = new b(bArr4);
        ByteOrder byteOrderS5 = s(bVar4);
        this.f14931f = byteOrderS5;
        bVar4.f14943i = byteOrderS5;
        s10 = bVar4.readShort();
        if (s10 != 20306) {
            z13 = true;
        } else {
            z13 = true;
        }
        bVar4.close();
        if (z13) {
            return 7;
        }
        bVar7 = new b(bArr4);
        ByteOrder byteOrderS6 = s(bVar7);
        this.f14931f = byteOrderS6;
        bVar7.f14943i = byteOrderS6;
        if (bVar7.readShort() == 85) {
            z14 = true;
        } else {
            z14 = false;
        }
        bVar7.close();
        if (z14) {
            return 10;
        }
        i10 = 0;
        while (true) {
            bArr = f14923x;
            if (i10 >= bArr.length) {
                z15 = true;
                break;
            }
            if (bArr4[i10] != bArr[i10]) {
                z15 = false;
                break;
            }
            i10++;
        }
        if (z15) {
            return 13;
        }
        i11 = 0;
        while (true) {
            bArr2 = B;
            if (i11 >= bArr2.length) {
                i12 = 0;
                while (true) {
                    bArr3 = C;
                    if (i12 >= bArr3.length) {
                        z16 = true;
                    } else {
                        if (bArr4[B.length + i12 + 4] != bArr3[i12]) {
                            break;
                            break;
                        }
                        i12++;
                    }
                    if (z16) {
                        return 14;
                    }
                    return 0;
                }
            }
            if (bArr4[i11] != bArr2[i11]) {
                break;
                break;
            }
            i11++;
        }
        z16 = false;
        if (z16) {
            return 14;
        }
        return 0;
    }

    public final void i(b bVar) throws Throwable {
        l(bVar);
        c cVar = this.f14929d[1].get("MakerNote");
        if (cVar != null) {
            b bVar2 = new b(cVar.f14948c);
            bVar2.f14943i = this.f14931f;
            byte[] bArr = f14921v;
            byte[] bArr2 = new byte[bArr.length];
            bVar2.readFully(bArr2);
            bVar2.Y(0L);
            byte[] bArr3 = f14922w;
            byte[] bArr4 = new byte[bArr3.length];
            bVar2.readFully(bArr4);
            if (Arrays.equals(bArr2, bArr)) {
                bVar2.Y(8L);
            } else if (Arrays.equals(bArr4, bArr3)) {
                bVar2.Y(12L);
            }
            u(bVar2, 6);
            c cVar2 = this.f14929d[7].get("PreviewImageStart");
            c cVar3 = this.f14929d[7].get("PreviewImageLength");
            if (cVar2 != null && cVar3 != null) {
                this.f14929d[5].put("JPEGInterchangeFormat", cVar2);
                this.f14929d[5].put("JPEGInterchangeFormatLength", cVar3);
            }
            c cVar4 = this.f14929d[8].get("AspectFrame");
            if (cVar4 != null) {
                int[] iArr = (int[]) cVar4.h(this.f14931f);
                if (iArr == null || iArr.length != 4) {
                    StringBuilder sbC = a0.b.c("Invalid aspect frame values. frame=");
                    sbC.append(Arrays.toString(iArr));
                    Log.w("ExifInterface", sbC.toString());
                } else {
                    if (iArr[2] <= iArr[0] || iArr[3] <= iArr[1]) {
                        return;
                    }
                    int i10 = (iArr[2] - iArr[0]) + 1;
                    int i11 = (iArr[3] - iArr[1]) + 1;
                    if (i10 < i11) {
                        int i12 = i10 + i11;
                        i11 = i12 - i11;
                        i10 = i12 - i11;
                    }
                    c cVarD = c.d(i10, this.f14931f);
                    c cVarD2 = c.d(i11, this.f14931f);
                    this.f14929d[0].put("ImageWidth", cVarD);
                    this.f14929d[0].put("ImageLength", cVarD2);
                }
            }
        }
    }

    public final void j(b bVar) throws Throwable {
        if (f14912m) {
            Log.d("ExifInterface", "getPngAttributes starting with: " + bVar);
        }
        bVar.f14943i = ByteOrder.BIG_ENDIAN;
        byte[] bArr = f14923x;
        bVar.skipBytes(bArr.length);
        int length = bArr.length + 0;
        while (true) {
            try {
                int i10 = bVar.readInt();
                int i11 = length + 4;
                byte[] bArr2 = new byte[4];
                if (bVar.read(bArr2) != 4) {
                    throw new IOException("Encountered invalid length while parsing PNG chunktype");
                }
                int i12 = i11 + 4;
                if (i12 == 16 && !Arrays.equals(bArr2, f14925z)) {
                    throw new IOException("Encountered invalid PNG file--IHDR chunk should appearas the first chunk");
                }
                if (Arrays.equals(bArr2, A)) {
                    return;
                }
                if (Arrays.equals(bArr2, f14924y)) {
                    byte[] bArr3 = new byte[i10];
                    if (bVar.read(bArr3) != i10) {
                        throw new IOException("Failed to read given length for given PNG chunk type: " + b(bArr2));
                    }
                    int i13 = bVar.readInt();
                    CRC32 crc32 = new CRC32();
                    crc32.update(bArr2);
                    crc32.update(bArr3);
                    if (((int) crc32.getValue()) == i13) {
                        this.f14933h = i12;
                        t(bArr3, 0);
                        z();
                        return;
                    } else {
                        throw new IOException("Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: " + i13 + ", calculated CRC value: " + crc32.getValue());
                    }
                }
                int i14 = i10 + 4;
                bVar.skipBytes(i14);
                length = i12 + i14;
            } catch (EOFException unused) {
                throw new IOException("Encountered corrupt PNG file.");
            }
        }
    }

    public final void k(b bVar) throws IOException {
        bVar.skipBytes(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        bVar.read(bArr);
        bVar.skipBytes(4);
        bVar.read(bArr2);
        int i10 = ByteBuffer.wrap(bArr).getInt();
        int i11 = ByteBuffer.wrap(bArr2).getInt();
        g(bVar, i10, 5);
        bVar.Y(i11);
        bVar.f14943i = ByteOrder.BIG_ENDIAN;
        int i12 = bVar.readInt();
        if (f14912m) {
            Log.d("ExifInterface", "numberOfDirectoryEntry: " + i12);
        }
        for (int i13 = 0; i13 < i12; i13++) {
            int unsignedShort = bVar.readUnsignedShort();
            int unsignedShort2 = bVar.readUnsignedShort();
            if (unsignedShort == H.f14949a) {
                short s10 = bVar.readShort();
                short s11 = bVar.readShort();
                c cVarD = c.d(s10, this.f14931f);
                c cVarD2 = c.d(s11, this.f14931f);
                this.f14929d[0].put("ImageLength", cVarD);
                this.f14929d[0].put("ImageWidth", cVarD2);
                if (f14912m) {
                    Log.d("ExifInterface", "Updated to length: " + ((int) s10) + ", width: " + ((int) s11));
                    return;
                }
                return;
            }
            bVar.skipBytes(unsignedShort2);
        }
    }

    public final void l(b bVar) throws Throwable {
        c cVar;
        q(bVar, bVar.available());
        u(bVar, 0);
        y(bVar, 0);
        y(bVar, 5);
        y(bVar, 4);
        z();
        if (this.f14928c != 8 || (cVar = this.f14929d[1].get("MakerNote")) == null) {
            return;
        }
        b bVar2 = new b(cVar.f14948c);
        bVar2.f14943i = this.f14931f;
        bVar2.Y(6L);
        u(bVar2, 9);
        c cVar2 = this.f14929d[9].get("ColorSpace");
        if (cVar2 != null) {
            this.f14929d[1].put("ColorSpace", cVar2);
        }
    }

    public final void m(b bVar) throws Throwable {
        l(bVar);
        if (this.f14929d[0].get("JpgFromRaw") != null) {
            g(bVar, this.f14937l, 5);
        }
        c cVar = this.f14929d[0].get("ISO");
        c cVar2 = this.f14929d[1].get("PhotographicSensitivity");
        if (cVar == null || cVar2 != null) {
            return;
        }
        this.f14929d[1].put("PhotographicSensitivity", cVar);
    }

    public final void n(b bVar) throws IOException {
        if (f14912m) {
            Log.d("ExifInterface", "getWebpAttributes starting with: " + bVar);
        }
        bVar.f14943i = ByteOrder.LITTLE_ENDIAN;
        bVar.skipBytes(B.length);
        int i10 = bVar.readInt() + 8;
        int iSkipBytes = bVar.skipBytes(C.length) + 8;
        while (true) {
            try {
                byte[] bArr = new byte[4];
                if (bVar.read(bArr) != 4) {
                    throw new IOException("Encountered invalid length while parsing WebP chunktype");
                }
                int i11 = bVar.readInt();
                int i12 = iSkipBytes + 4 + 4;
                if (Arrays.equals(D, bArr)) {
                    byte[] bArr2 = new byte[i11];
                    if (bVar.read(bArr2) == i11) {
                        this.f14933h = i12;
                        t(bArr2, 0);
                        this.f14933h = i12;
                        return;
                    } else {
                        throw new IOException("Failed to read given length for given PNG chunk type: " + b(bArr));
                    }
                }
                if (i11 % 2 == 1) {
                    i11++;
                }
                int i13 = i12 + i11;
                if (i13 == i10) {
                    return;
                }
                if (i13 > i10) {
                    throw new IOException("Encountered WebP file with invalid chunk size");
                }
                int iSkipBytes2 = bVar.skipBytes(i11);
                if (iSkipBytes2 != i11) {
                    throw new IOException("Encountered WebP file with invalid chunk size");
                }
                iSkipBytes = i12 + iSkipBytes2;
            } catch (EOFException unused) {
                throw new IOException("Encountered corrupt WebP file.");
            }
        }
    }

    public final void o(b bVar, HashMap map) throws Throwable {
        c cVar = (c) map.get("JPEGInterchangeFormat");
        c cVar2 = (c) map.get("JPEGInterchangeFormatLength");
        if (cVar == null || cVar2 == null) {
            return;
        }
        int iF = cVar.f(this.f14931f);
        int iF2 = cVar2.f(this.f14931f);
        if (this.f14928c == 7) {
            iF += this.f14934i;
        }
        int iMin = Math.min(iF2, bVar.f14944j - iF);
        if (iF > 0 && iMin > 0) {
            int i10 = this.f14933h + iF;
            if (this.f14927b == null && this.f14926a == null) {
                bVar.Y(i10);
                bVar.readFully(new byte[iMin]);
            }
        }
        if (f14912m) {
            Log.d("ExifInterface", "Setting thumbnail attributes with offset: " + iF + ", length: " + iMin);
        }
    }

    public final boolean p(HashMap map) throws IOException {
        c cVar = (c) map.get("ImageLength");
        c cVar2 = (c) map.get("ImageWidth");
        if (cVar == null || cVar2 == null) {
            return false;
        }
        return cVar.f(this.f14931f) <= 512 && cVar2.f(this.f14931f) <= 512;
    }

    public final void q(b bVar, int i10) throws IOException {
        ByteOrder byteOrderS = s(bVar);
        this.f14931f = byteOrderS;
        bVar.f14943i = byteOrderS;
        int unsignedShort = bVar.readUnsignedShort();
        int i11 = this.f14928c;
        if (i11 != 7 && i11 != 10 && unsignedShort != 42) {
            StringBuilder sbC = a0.b.c("Invalid start code: ");
            sbC.append(Integer.toHexString(unsignedShort));
            throw new IOException(sbC.toString());
        }
        int i12 = bVar.readInt();
        if (i12 < 8 || i12 >= i10) {
            throw new IOException(e0.d("Invalid first Ifd offset: ", i12));
        }
        int i13 = i12 - 8;
        if (i13 > 0 && bVar.skipBytes(i13) != i13) {
            throw new IOException(e0.d("Couldn't jump to first Ifd: ", i13));
        }
    }

    public final void r() {
        for (int i10 = 0; i10 < this.f14929d.length; i10++) {
            StringBuilder sbC = y0.c("The size of tag group[", i10, "]: ");
            sbC.append(this.f14929d[i10].size());
            Log.d("ExifInterface", sbC.toString());
            for (Map.Entry<String, c> entry : this.f14929d[i10].entrySet()) {
                c value = entry.getValue();
                StringBuilder sbC2 = a0.b.c("tagName: ");
                sbC2.append(entry.getKey());
                sbC2.append(", tagType: ");
                sbC2.append(value.toString());
                sbC2.append(", tagValue: '");
                sbC2.append(value.g(this.f14931f));
                sbC2.append("'");
                Log.d("ExifInterface", sbC2.toString());
            }
        }
    }

    public final ByteOrder s(b bVar) throws IOException {
        short s10 = bVar.readShort();
        if (s10 == 18761) {
            if (f14912m) {
                Log.d("ExifInterface", "readExifSegment: Byte Align II");
            }
            return ByteOrder.LITTLE_ENDIAN;
        }
        if (s10 == 19789) {
            if (f14912m) {
                Log.d("ExifInterface", "readExifSegment: Byte Align MM");
            }
            return ByteOrder.BIG_ENDIAN;
        }
        StringBuilder sbC = a0.b.c("Invalid byte order: ");
        sbC.append(Integer.toHexString(s10));
        throw new IOException(sbC.toString());
    }

    public final void t(byte[] bArr, int i10) throws IOException {
        b bVar = new b(bArr);
        q(bVar, bArr.length);
        u(bVar, i10);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0203  */
    /* JADX WARN: Code duplicated, block: B:106:0x021d  */
    /* JADX WARN: Code duplicated, block: B:107:0x0223 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:108:0x0225  */
    /* JADX WARN: Code duplicated, block: B:111:0x0241  */
    /* JADX WARN: Code duplicated, block: B:114:0x0255  */
    /* JADX WARN: Code duplicated, block: B:116:0x0273  */
    /* JADX WARN: Code duplicated, block: B:118:0x027a  */
    /* JADX WARN: Code duplicated, block: B:120:0x027d  */
    /* JADX WARN: Code duplicated, block: B:122:0x0281  */
    /* JADX WARN: Code duplicated, block: B:124:0x0285  */
    /* JADX WARN: Code duplicated, block: B:128:0x028f  */
    /* JADX WARN: Code duplicated, block: B:129:0x0294  */
    /* JADX WARN: Code duplicated, block: B:130:0x0299  */
    /* JADX WARN: Code duplicated, block: B:134:0x02a1  */
    /* JADX WARN: Code duplicated, block: B:137:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:144:0x0303 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:145:0x0305  */
    /* JADX WARN: Code duplicated, block: B:147:0x031e  */
    /* JADX WARN: Code duplicated, block: B:149:0x034e  */
    /* JADX WARN: Code duplicated, block: B:152:0x035b  */
    /* JADX WARN: Code duplicated, block: B:154:0x0365  */
    /* JADX WARN: Code duplicated, block: B:163:0x0391  */
    /* JADX WARN: Code duplicated, block: B:190:0x0394 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:61:0x00fc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:62:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:64:0x011f  */
    /* JADX WARN: Code duplicated, block: B:66:0x0123  */
    /* JADX WARN: Code duplicated, block: B:73:0x013b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:74:0x013d  */
    /* JADX WARN: Code duplicated, block: B:81:0x0172  */
    /* JADX WARN: Code duplicated, block: B:82:0x0177  */
    /* JADX WARN: Code duplicated, block: B:84:0x017f  */
    /* JADX WARN: Code duplicated, block: B:86:0x0185  */
    /* JADX WARN: Code duplicated, block: B:87:0x019c  */
    /* JADX WARN: Code duplicated, block: B:90:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:92:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:93:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:95:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:99:0x01fc  */
    /* JADX WARN: Instruction removed from duplicated block: B:108:0x0225, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:114:0x0255, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:145:0x0305, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:74:0x013d, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:86:0x0185, please report this as an issue */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.HashSet, java.util.Set<java.lang.Integer>] */
    /* JADX WARN: Type inference failed for: r6v41, types: [java.util.HashSet, java.util.Set<java.lang.Integer>] */
    /* JADX WARN: Type inference failed for: r8v3, types: [java.util.HashSet, java.util.Set<java.lang.Integer>] */
    public final void u(b bVar, int i10) throws IOException {
        short s10;
        short s11;
        boolean z10;
        long j10;
        boolean z11;
        int i11;
        int i12;
        Integer num;
        long j11;
        String str;
        long jX;
        int i13;
        int unsignedShort;
        int i14;
        int i15;
        long j12;
        int i16;
        long j13;
        this.f14930e.add(Integer.valueOf(bVar.f14945k));
        if (bVar.f14945k + 2 > bVar.f14944j) {
            return;
        }
        short s12 = bVar.readShort();
        String str2 = "ExifInterface";
        if (f14912m) {
            Log.d("ExifInterface", "numberOfDirectoryEntry: " + ((int) s12));
        }
        if ((s12 * 12) + bVar.f14945k > bVar.f14944j || s12 <= 0) {
            return;
        }
        short s13 = 0;
        char c10 = 0;
        while (s13 < s12) {
            int unsignedShort2 = bVar.readUnsignedShort();
            int unsignedShort3 = bVar.readUnsignedShort();
            int i17 = bVar.readInt();
            long j14 = ((long) bVar.f14945k) + 4;
            d dVar = K[i10].get(Integer.valueOf(unsignedShort2));
            boolean z12 = f14912m;
            if (z12) {
                Object[] objArr = new Object[5];
                objArr[c10] = Integer.valueOf(i10);
                objArr[1] = Integer.valueOf(unsignedShort2);
                objArr[2] = dVar != null ? dVar.f14950b : null;
                objArr[3] = Integer.valueOf(unsignedShort3);
                objArr[4] = Integer.valueOf(i17);
                Log.d(str2, String.format("ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d", objArr));
            }
            if (dVar == null) {
                if (z12) {
                    Log.d(str2, "Skip the tag entry since tag number is not defined: " + unsignedShort2);
                }
                s10 = s12;
            } else {
                if (unsignedShort3 > 0) {
                    int[] iArr = F;
                    if (unsignedShort3 < iArr.length) {
                        int i18 = dVar.f14951c;
                        if (i18 == 7 || unsignedShort3 == 7 || i18 == unsignedShort3 || (i11 = dVar.f14952d) == unsignedShort3) {
                            s10 = s12;
                        } else {
                            s10 = s12;
                            if (((i18 != 4 && i11 != 4) || unsignedShort3 != 3) && (((i18 != 9 && i11 != 9) || unsignedShort3 != 8) && ((i18 != 12 && i11 != 12) || unsignedShort3 != 11))) {
                                z10 = false;
                            }
                            if (!z10) {
                                short s14 = s13;
                                if (unsignedShort3 == 7) {
                                    unsignedShort3 = i18;
                                }
                                s11 = s14;
                                j10 = ((long) i17) * ((long) iArr[unsignedShort3]);
                                if (j10 >= 0 || j10 > 2147483647L) {
                                    if (z12) {
                                        Log.d(str2, "Skip the tag entry since the number of components is invalid: " + i17);
                                    }
                                    z11 = false;
                                } else {
                                    z11 = true;
                                }
                            } else if (z12) {
                                StringBuilder sbC = a0.b.c("Skip the tag entry since data format (");
                                sbC.append(E[unsignedShort3]);
                                sbC.append(") is unexpected for tag: ");
                                sbC.append(dVar.f14950b);
                                Log.d(str2, sbC.toString());
                            }
                        }
                        z10 = true;
                        if (!z10) {
                            short s15 = s13;
                            if (unsignedShort3 == 7) {
                                unsignedShort3 = i18;
                            }
                            s11 = s15;
                            j10 = ((long) i17) * ((long) iArr[unsignedShort3]);
                            if (j10 >= 0) {
                                if (z12) {
                                    Log.d(str2, "Skip the tag entry since the number of components is invalid: " + i17);
                                }
                                z11 = false;
                            } else {
                                if (z12) {
                                    Log.d(str2, "Skip the tag entry since the number of components is invalid: " + i17);
                                }
                                z11 = false;
                            }
                        } else if (z12) {
                            StringBuilder sbC2 = a0.b.c("Skip the tag entry since data format (");
                            sbC2.append(E[unsignedShort3]);
                            sbC2.append(") is unexpected for tag: ");
                            sbC2.append(dVar.f14950b);
                            Log.d(str2, sbC2.toString());
                        }
                    }
                    if (z11) {
                        if (j10 > 4) {
                            i14 = bVar.readInt();
                            if (z12) {
                                Log.d(str2, "seek to data offset: " + i14);
                            }
                            i15 = this.f14928c;
                            if (i15 == 7) {
                                if ("MakerNote".equals(dVar.f14950b)) {
                                    this.f14934i = i14;
                                } else if (i10 != 6 && "ThumbnailImage".equals(dVar.f14950b)) {
                                    this.f14935j = i14;
                                    this.f14936k = i17;
                                    c cVarD = c.d(6, this.f14931f);
                                    j12 = j14;
                                    c cVarB = c.b(this.f14935j, this.f14931f);
                                    i16 = i17;
                                    c cVarB2 = c.b(this.f14936k, this.f14931f);
                                    this.f14929d[4].put("Compression", cVarD);
                                    this.f14929d[4].put("JPEGInterchangeFormat", cVarB);
                                    this.f14929d[4].put("JPEGInterchangeFormatLength", cVarB2);
                                }
                                j12 = j14;
                                i16 = i17;
                            } else {
                                j12 = j14;
                                i16 = i17;
                                if (i15 == 10 && "JpgFromRaw".equals(dVar.f14950b)) {
                                    this.f14937l = i14;
                                }
                            }
                            j13 = i14;
                            i12 = i16;
                            if (j13 + j10 <= bVar.f14944j) {
                                bVar.Y(j13);
                                j14 = j12;
                            } else {
                                if (z12) {
                                    Log.d(str2, "Skip the tag entry since data offset is invalid: " + i14);
                                }
                                bVar.Y(j12);
                            }
                        } else {
                            unsignedShort3 = unsignedShort3;
                            i12 = i17;
                        }
                        num = N.get(Integer.valueOf(unsignedShort2));
                        if (z12) {
                            Log.d(str2, "nextIfdType: " + num + " byteCount: " + j10);
                        }
                        if (num != null) {
                            jX = -1;
                            i13 = unsignedShort3;
                            if (i13 != 3) {
                                if (i13 == 4) {
                                    jX = bVar.x();
                                } else if (i13 == 8) {
                                    unsignedShort = bVar.readShort();
                                } else if (i13 != 9 || i13 == 13) {
                                    unsignedShort = bVar.readInt();
                                }
                                if (z12) {
                                    Log.d(str2, String.format("Offset: %d, tagName: %s", Long.valueOf(jX), dVar.f14950b));
                                }
                                if (jX > 0 || jX >= bVar.f14944j) {
                                    if (z12) {
                                        Log.d(str2, "Skip jump into the IFD since its offset is invalid: " + jX);
                                    }
                                } else if (!this.f14930e.contains(Integer.valueOf((int) jX))) {
                                    bVar.Y(jX);
                                    u(bVar, num.intValue());
                                } else if (z12) {
                                    Log.d(str2, "Skip jump into the IFD since it has already been read: IfdType " + num + " (at " + jX + ")");
                                }
                                bVar.Y(j14);
                            } else {
                                unsignedShort = bVar.readUnsignedShort();
                            }
                            jX = unsignedShort;
                            if (z12) {
                                Log.d(str2, String.format("Offset: %d, tagName: %s", Long.valueOf(jX), dVar.f14950b));
                            }
                            if (jX > 0) {
                                if (z12) {
                                    Log.d(str2, "Skip jump into the IFD since its offset is invalid: " + jX);
                                }
                            } else if (z12) {
                                Log.d(str2, "Skip jump into the IFD since its offset is invalid: " + jX);
                            }
                            bVar.Y(j14);
                        } else {
                            int i19 = bVar.f14945k + this.f14933h;
                            byte[] bArr = new byte[(int) j10];
                            bVar.readFully(bArr);
                            long j15 = i19;
                            j11 = j14;
                            str = str2;
                            c cVar = new c(unsignedShort3, i12, j15, bArr);
                            this.f14929d[i10].put(dVar.f14950b, cVar);
                            if ("DNGVersion".equals(dVar.f14950b)) {
                                this.f14928c = 3;
                            }
                            if (((!"Make".equals(dVar.f14950b) || "Model".equals(dVar.f14950b)) && cVar.g(this.f14931f).contains("PENTAX")) || ("Compression".equals(dVar.f14950b) && cVar.f(this.f14931f) == 65535)) {
                                this.f14928c = 8;
                            }
                            if (bVar.f14945k != j11) {
                                bVar.Y(j11);
                            }
                        }
                        s13 = (short) (s11 + 1);
                        c10 = 0;
                        str2 = str;
                        s12 = s10;
                    } else {
                        bVar.Y(j14);
                    }
                    str = str2;
                    s13 = (short) (s11 + 1);
                    c10 = 0;
                    str2 = str;
                    s12 = s10;
                }
                s10 = s12;
                s11 = s13;
                if (z12) {
                    Log.d(str2, "Skip the tag entry since data format is invalid: " + unsignedShort3);
                }
                z11 = false;
                j10 = 0;
                if (z11) {
                    bVar.Y(j14);
                } else {
                    if (j10 > 4) {
                        i14 = bVar.readInt();
                        if (z12) {
                            Log.d(str2, "seek to data offset: " + i14);
                        }
                        i15 = this.f14928c;
                        if (i15 == 7) {
                            if ("MakerNote".equals(dVar.f14950b)) {
                                this.f14934i = i14;
                            } else if (i10 != 6) {
                            }
                            j12 = j14;
                            i16 = i17;
                        } else {
                            j12 = j14;
                            i16 = i17;
                            if (i15 == 10) {
                                this.f14937l = i14;
                            }
                        }
                        j13 = i14;
                        i12 = i16;
                        if (j13 + j10 <= bVar.f14944j) {
                            bVar.Y(j13);
                            j14 = j12;
                        } else {
                            if (z12) {
                                Log.d(str2, "Skip the tag entry since data offset is invalid: " + i14);
                            }
                            bVar.Y(j12);
                        }
                    } else {
                        unsignedShort3 = unsignedShort3;
                        i12 = i17;
                    }
                    num = N.get(Integer.valueOf(unsignedShort2));
                    if (z12) {
                        Log.d(str2, "nextIfdType: " + num + " byteCount: " + j10);
                    }
                    if (num != null) {
                        jX = -1;
                        i13 = unsignedShort3;
                        if (i13 != 3) {
                            if (i13 == 4) {
                                jX = bVar.x();
                            } else if (i13 == 8) {
                                if (i13 != 9) {
                                }
                                unsignedShort = bVar.readInt();
                            } else {
                                unsignedShort = bVar.readShort();
                            }
                            if (z12) {
                                Log.d(str2, String.format("Offset: %d, tagName: %s", Long.valueOf(jX), dVar.f14950b));
                            }
                            if (jX > 0) {
                                if (z12) {
                                    Log.d(str2, "Skip jump into the IFD since its offset is invalid: " + jX);
                                }
                            } else if (z12) {
                                Log.d(str2, "Skip jump into the IFD since its offset is invalid: " + jX);
                            }
                            bVar.Y(j14);
                        } else {
                            unsignedShort = bVar.readUnsignedShort();
                        }
                        jX = unsignedShort;
                        if (z12) {
                            Log.d(str2, String.format("Offset: %d, tagName: %s", Long.valueOf(jX), dVar.f14950b));
                        }
                        if (jX > 0) {
                            if (z12) {
                                Log.d(str2, "Skip jump into the IFD since its offset is invalid: " + jX);
                            }
                        } else if (z12) {
                            Log.d(str2, "Skip jump into the IFD since its offset is invalid: " + jX);
                        }
                        bVar.Y(j14);
                    } else {
                        int i110 = bVar.f14945k + this.f14933h;
                        byte[] bArr2 = new byte[(int) j10];
                        bVar.readFully(bArr2);
                        long j16 = i110;
                        j11 = j14;
                        str = str2;
                        c cVar2 = new c(unsignedShort3, i12, j16, bArr2);
                        this.f14929d[i10].put(dVar.f14950b, cVar2);
                        if ("DNGVersion".equals(dVar.f14950b)) {
                            this.f14928c = 3;
                        }
                        if (!"Make".equals(dVar.f14950b)) {
                        }
                        this.f14928c = 8;
                        if (bVar.f14945k != j11) {
                            bVar.Y(j11);
                        }
                    }
                    s13 = (short) (s11 + 1);
                    c10 = 0;
                    str2 = str;
                    s12 = s10;
                }
                str = str2;
                s13 = (short) (s11 + 1);
                c10 = 0;
                str2 = str;
                s12 = s10;
            }
            s11 = s13;
            z11 = false;
            j10 = 0;
            if (z11) {
                bVar.Y(j14);
            } else {
                if (j10 > 4) {
                    i14 = bVar.readInt();
                    if (z12) {
                        Log.d(str2, "seek to data offset: " + i14);
                    }
                    i15 = this.f14928c;
                    if (i15 == 7) {
                        if ("MakerNote".equals(dVar.f14950b)) {
                            this.f14934i = i14;
                        } else if (i10 != 6) {
                        }
                        j12 = j14;
                        i16 = i17;
                    } else {
                        j12 = j14;
                        i16 = i17;
                        if (i15 == 10) {
                            this.f14937l = i14;
                        }
                    }
                    j13 = i14;
                    i12 = i16;
                    if (j13 + j10 <= bVar.f14944j) {
                        bVar.Y(j13);
                        j14 = j12;
                    } else {
                        if (z12) {
                            Log.d(str2, "Skip the tag entry since data offset is invalid: " + i14);
                        }
                        bVar.Y(j12);
                    }
                } else {
                    unsignedShort3 = unsignedShort3;
                    i12 = i17;
                }
                num = N.get(Integer.valueOf(unsignedShort2));
                if (z12) {
                    Log.d(str2, "nextIfdType: " + num + " byteCount: " + j10);
                }
                if (num != null) {
                    jX = -1;
                    i13 = unsignedShort3;
                    if (i13 != 3) {
                        if (i13 == 4) {
                            jX = bVar.x();
                        } else if (i13 == 8) {
                            if (i13 != 9) {
                            }
                            unsignedShort = bVar.readInt();
                        } else {
                            unsignedShort = bVar.readShort();
                        }
                        if (z12) {
                            Log.d(str2, String.format("Offset: %d, tagName: %s", Long.valueOf(jX), dVar.f14950b));
                        }
                        if (jX > 0) {
                            if (z12) {
                                Log.d(str2, "Skip jump into the IFD since its offset is invalid: " + jX);
                            }
                        } else if (z12) {
                            Log.d(str2, "Skip jump into the IFD since its offset is invalid: " + jX);
                        }
                        bVar.Y(j14);
                    } else {
                        unsignedShort = bVar.readUnsignedShort();
                    }
                    jX = unsignedShort;
                    if (z12) {
                        Log.d(str2, String.format("Offset: %d, tagName: %s", Long.valueOf(jX), dVar.f14950b));
                    }
                    if (jX > 0) {
                        if (z12) {
                            Log.d(str2, "Skip jump into the IFD since its offset is invalid: " + jX);
                        }
                    } else if (z12) {
                        Log.d(str2, "Skip jump into the IFD since its offset is invalid: " + jX);
                    }
                    bVar.Y(j14);
                } else {
                    int i111 = bVar.f14945k + this.f14933h;
                    byte[] bArr3 = new byte[(int) j10];
                    bVar.readFully(bArr3);
                    long j17 = i111;
                    j11 = j14;
                    str = str2;
                    c cVar3 = new c(unsignedShort3, i12, j17, bArr3);
                    this.f14929d[i10].put(dVar.f14950b, cVar3);
                    if ("DNGVersion".equals(dVar.f14950b)) {
                        this.f14928c = 3;
                    }
                    if (!"Make".equals(dVar.f14950b)) {
                    }
                    this.f14928c = 8;
                    if (bVar.f14945k != j11) {
                        bVar.Y(j11);
                    }
                }
                s13 = (short) (s11 + 1);
                c10 = 0;
                str2 = str;
                s12 = s10;
            }
            str = str2;
            s13 = (short) (s11 + 1);
            c10 = 0;
            str2 = str;
            s12 = s10;
        }
        String str3 = str2;
        if (bVar.f14945k + 4 <= bVar.f14944j) {
            int i20 = bVar.readInt();
            boolean z13 = f14912m;
            if (z13) {
                Log.d(str3, String.format("nextIfdOffset: %d", Integer.valueOf(i20)));
            }
            long j18 = i20;
            if (j18 <= 0 || i20 >= bVar.f14944j) {
                if (z13) {
                    Log.d(str3, "Stop reading file since a wrong offset may cause an infinite loop: " + i20);
                    return;
                }
                return;
            }
            if (this.f14930e.contains(Integer.valueOf(i20))) {
                if (z13) {
                    Log.d(str3, "Stop reading file since re-reading an IFD may cause an infinite loop: " + i20);
                    return;
                }
                return;
            }
            bVar.Y(j18);
            if (this.f14929d[4].isEmpty()) {
                u(bVar, 4);
            } else if (this.f14929d[5].isEmpty()) {
                u(bVar, 5);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0070  */
    /* JADX WARN: Code duplicated, block: B:30:0x0074  */
    public final void v(b bVar) throws Throwable {
        boolean z10;
        c cVar;
        int iF;
        HashMap<String, c> map = this.f14929d[4];
        c cVar2 = map.get("Compression");
        if (cVar2 == null) {
            o(bVar, map);
            return;
        }
        int iF2 = cVar2.f(this.f14931f);
        if (iF2 != 1) {
            if (iF2 == 6) {
                o(bVar, map);
                return;
            } else if (iF2 != 7) {
                return;
            }
        }
        c cVar3 = map.get("BitsPerSample");
        if (cVar3 != null) {
            int[] iArr = (int[]) cVar3.h(this.f14931f);
            int[] iArr2 = f14915p;
            if (Arrays.equals(iArr2, iArr) || (this.f14928c == 3 && (cVar = map.get("PhotometricInterpretation")) != null && (((iF = cVar.f(this.f14931f)) == 1 && Arrays.equals(iArr, f14916q)) || (iF == 6 && Arrays.equals(iArr, iArr2))))) {
                z10 = true;
            } else {
                if (f14912m) {
                    Log.d("ExifInterface", "Unsupported data type value");
                }
                z10 = false;
            }
        } else {
            if (f14912m) {
                Log.d("ExifInterface", "Unsupported data type value");
            }
            z10 = false;
        }
        if (z10) {
            c cVar4 = map.get("StripOffsets");
            c cVar5 = map.get("StripByteCounts");
            if (cVar4 == null || cVar5 == null) {
                return;
            }
            long[] jArrC = c(cVar4.h(this.f14931f));
            long[] jArrC2 = c(cVar5.h(this.f14931f));
            if (jArrC == null || jArrC.length == 0) {
                Log.w("ExifInterface", "stripOffsets should not be null or have zero length.");
                return;
            }
            if (jArrC2 == null || jArrC2.length == 0) {
                Log.w("ExifInterface", "stripByteCounts should not be null or have zero length.");
                return;
            }
            if (jArrC.length != jArrC2.length) {
                Log.w("ExifInterface", "stripOffsets and stripByteCounts should have same length.");
                return;
            }
            long j10 = 0;
            for (long j11 : jArrC2) {
                j10 += j11;
            }
            byte[] bArr = new byte[(int) j10];
            this.f14932g = true;
            int i10 = 0;
            int i11 = 0;
            for (int i12 = 0; i12 < jArrC.length; i12++) {
                int i13 = (int) jArrC[i12];
                int i14 = (int) jArrC2[i12];
                if (i12 < jArrC.length - 1 && i13 + i14 != jArrC[i12 + 1]) {
                    this.f14932g = false;
                }
                int i15 = i13 - i10;
                if (i15 < 0) {
                    Log.d("ExifInterface", "Invalid strip offset value");
                }
                bVar.Y(i15);
                int i16 = i10 + i15;
                byte[] bArr2 = new byte[i14];
                bVar.read(bArr2);
                i10 = i16 + i14;
                System.arraycopy(bArr2, 0, bArr, i11, i14);
                i11 += i14;
            }
            if (this.f14932g) {
                long j12 = jArrC[0];
            }
        }
    }

    public final void x(int i10, int i11) throws Throwable {
        if (this.f14929d[i10].isEmpty() || this.f14929d[i11].isEmpty()) {
            if (f14912m) {
                Log.d("ExifInterface", "Cannot perform swap since only one image data exists");
                return;
            }
            return;
        }
        c cVar = this.f14929d[i10].get("ImageLength");
        c cVar2 = this.f14929d[i10].get("ImageWidth");
        c cVar3 = this.f14929d[i11].get("ImageLength");
        c cVar4 = this.f14929d[i11].get("ImageWidth");
        if (cVar == null || cVar2 == null) {
            if (f14912m) {
                Log.d("ExifInterface", "First image does not contain valid size information");
                return;
            }
            return;
        }
        if (cVar3 == null || cVar4 == null) {
            if (f14912m) {
                Log.d("ExifInterface", "Second image does not contain valid size information");
                return;
            }
            return;
        }
        int iF = cVar.f(this.f14931f);
        int iF2 = cVar2.f(this.f14931f);
        int iF3 = cVar3.f(this.f14931f);
        int iF4 = cVar4.f(this.f14931f);
        if (iF >= iF3 || iF2 >= iF4) {
            return;
        }
        HashMap<String, c>[] mapArr = this.f14929d;
        HashMap<String, c> map = mapArr[i10];
        mapArr[i10] = mapArr[i11];
        mapArr[i11] = map;
    }

    public final void y(b bVar, int i10) throws Throwable {
        c cVar;
        c cVarD;
        c cVarD2;
        c cVar2 = this.f14929d[i10].get("DefaultCropSize");
        c cVar3 = this.f14929d[i10].get("SensorTopBorder");
        c cVar4 = this.f14929d[i10].get("SensorLeftBorder");
        c cVar5 = this.f14929d[i10].get("SensorBottomBorder");
        c cVar6 = this.f14929d[i10].get("SensorRightBorder");
        if (cVar2 != null) {
            if (cVar2.f14946a == 5) {
                e[] eVarArr = (e[]) cVar2.h(this.f14931f);
                if (eVarArr == null || eVarArr.length != 2) {
                    StringBuilder sbC = a0.b.c("Invalid crop size values. cropSize=");
                    sbC.append(Arrays.toString(eVarArr));
                    Log.w("ExifInterface", sbC.toString());
                    return;
                }
                cVarD = c.c(eVarArr[0], this.f14931f);
                cVarD2 = c.c(eVarArr[1], this.f14931f);
            } else {
                int[] iArr = (int[]) cVar2.h(this.f14931f);
                if (iArr == null || iArr.length != 2) {
                    StringBuilder sbC2 = a0.b.c("Invalid crop size values. cropSize=");
                    sbC2.append(Arrays.toString(iArr));
                    Log.w("ExifInterface", sbC2.toString());
                    return;
                }
                cVarD = c.d(iArr[0], this.f14931f);
                cVarD2 = c.d(iArr[1], this.f14931f);
            }
            this.f14929d[i10].put("ImageWidth", cVarD);
            this.f14929d[i10].put("ImageLength", cVarD2);
            return;
        }
        if (cVar3 == null || cVar4 == null || cVar5 == null || cVar6 == null) {
            c cVar7 = this.f14929d[i10].get("ImageLength");
            c cVar8 = this.f14929d[i10].get("ImageWidth");
            if ((cVar7 == null || cVar8 == null) && (cVar = this.f14929d[i10].get("JPEGInterchangeFormat")) != null) {
                g(bVar, cVar.f(this.f14931f), i10);
                return;
            }
            return;
        }
        int iF = cVar3.f(this.f14931f);
        int iF2 = cVar5.f(this.f14931f);
        int iF3 = cVar6.f(this.f14931f);
        int iF4 = cVar4.f(this.f14931f);
        if (iF2 <= iF || iF3 <= iF4) {
            return;
        }
        c cVarD3 = c.d(iF2 - iF, this.f14931f);
        c cVarD4 = c.d(iF3 - iF4, this.f14931f);
        this.f14929d[i10].put("ImageLength", cVarD3);
        this.f14929d[i10].put("ImageWidth", cVarD4);
    }

    public final void z() throws Throwable {
        x(0, 5);
        x(0, 4);
        x(5, 4);
        c cVar = this.f14929d[1].get("PixelXDimension");
        c cVar2 = this.f14929d[1].get("PixelYDimension");
        if (cVar != null && cVar2 != null) {
            this.f14929d[0].put("ImageWidth", cVar);
            this.f14929d[0].put("ImageLength", cVar2);
        }
        if (this.f14929d[4].isEmpty() && p(this.f14929d[5])) {
            HashMap<String, c>[] mapArr = this.f14929d;
            mapArr[4] = mapArr[5];
            mapArr[5] = new HashMap<>();
        }
        if (p(this.f14929d[4])) {
            return;
        }
        Log.d("ExifInterface", "No image meets the size requirements of a thumbnail image.");
    }

    /* JADX INFO: compiled from: ExifInterface.java */
    public static class b extends InputStream implements DataInput {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static final ByteOrder f14940l = ByteOrder.LITTLE_ENDIAN;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public static final ByteOrder f14941m = ByteOrder.BIG_ENDIAN;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public DataInputStream f14942h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public ByteOrder f14943i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f14944j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f14945k;

        public b(InputStream inputStream) throws IOException {
            ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
            this.f14943i = byteOrder;
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            this.f14942h = dataInputStream;
            int iAvailable = dataInputStream.available();
            this.f14944j = iAvailable;
            this.f14945k = 0;
            this.f14942h.mark(iAvailable);
            this.f14943i = byteOrder;
        }

        public final void Y(long j10) throws IOException {
            int i10 = this.f14945k;
            if (i10 > j10) {
                this.f14945k = 0;
                this.f14942h.reset();
                this.f14942h.mark(this.f14944j);
            } else {
                j10 -= (long) i10;
            }
            int i11 = (int) j10;
            if (skipBytes(i11) != i11) {
                throw new IOException("Couldn't seek up to the byteCount");
            }
        }

        @Override // java.io.InputStream
        public final int available() throws IOException {
            return this.f14942h.available();
        }

        @Override // java.io.InputStream
        public final int read() throws IOException {
            this.f14945k++;
            return this.f14942h.read();
        }

        @Override // java.io.DataInput
        public final boolean readBoolean() throws IOException {
            this.f14945k++;
            return this.f14942h.readBoolean();
        }

        @Override // java.io.DataInput
        public final byte readByte() throws IOException {
            int i10 = this.f14945k + 1;
            this.f14945k = i10;
            if (i10 > this.f14944j) {
                throw new EOFException();
            }
            int i11 = this.f14942h.read();
            if (i11 >= 0) {
                return (byte) i11;
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public final char readChar() throws IOException {
            this.f14945k += 2;
            return this.f14942h.readChar();
        }

        @Override // java.io.DataInput
        public final double readDouble() throws IOException {
            return Double.longBitsToDouble(readLong());
        }

        @Override // java.io.DataInput
        public final float readFloat() throws IOException {
            return Float.intBitsToFloat(readInt());
        }

        @Override // java.io.DataInput
        public final void readFully(byte[] bArr, int i10, int i11) throws IOException {
            int i12 = this.f14945k + i11;
            this.f14945k = i12;
            if (i12 > this.f14944j) {
                throw new EOFException();
            }
            if (this.f14942h.read(bArr, i10, i11) != i11) {
                throw new IOException("Couldn't read up to the length of buffer");
            }
        }

        @Override // java.io.DataInput
        public final int readInt() throws IOException {
            int i10 = this.f14945k + 4;
            this.f14945k = i10;
            if (i10 > this.f14944j) {
                throw new EOFException();
            }
            int i11 = this.f14942h.read();
            int i12 = this.f14942h.read();
            int i13 = this.f14942h.read();
            int i14 = this.f14942h.read();
            if ((i11 | i12 | i13 | i14) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.f14943i;
            if (byteOrder == f14940l) {
                return (i14 << 24) + (i13 << 16) + (i12 << 8) + i11;
            }
            if (byteOrder == f14941m) {
                return (i11 << 24) + (i12 << 16) + (i13 << 8) + i14;
            }
            StringBuilder sbC = a0.b.c("Invalid byte order: ");
            sbC.append(this.f14943i);
            throw new IOException(sbC.toString());
        }

        @Override // java.io.DataInput
        public final String readLine() throws IOException {
            Log.d("ExifInterface", "Currently unsupported");
            return null;
        }

        @Override // java.io.DataInput
        public final long readLong() throws IOException {
            int i10 = this.f14945k + 8;
            this.f14945k = i10;
            if (i10 > this.f14944j) {
                throw new EOFException();
            }
            int i11 = this.f14942h.read();
            int i12 = this.f14942h.read();
            int i13 = this.f14942h.read();
            int i14 = this.f14942h.read();
            int i15 = this.f14942h.read();
            int i16 = this.f14942h.read();
            int i17 = this.f14942h.read();
            int i18 = this.f14942h.read();
            if ((i11 | i12 | i13 | i14 | i15 | i16 | i17 | i18) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.f14943i;
            if (byteOrder == f14940l) {
                return (((long) i18) << 56) + (((long) i17) << 48) + (((long) i16) << 40) + (((long) i15) << 32) + (((long) i14) << 24) + (((long) i13) << 16) + (((long) i12) << 8) + ((long) i11);
            }
            if (byteOrder == f14941m) {
                return (((long) i11) << 56) + (((long) i12) << 48) + (((long) i13) << 40) + (((long) i14) << 32) + (((long) i15) << 24) + (((long) i16) << 16) + (((long) i17) << 8) + ((long) i18);
            }
            StringBuilder sbC = a0.b.c("Invalid byte order: ");
            sbC.append(this.f14943i);
            throw new IOException(sbC.toString());
        }

        @Override // java.io.DataInput
        public final short readShort() throws IOException {
            int i10 = this.f14945k + 2;
            this.f14945k = i10;
            if (i10 > this.f14944j) {
                throw new EOFException();
            }
            int i11 = this.f14942h.read();
            int i12 = this.f14942h.read();
            if ((i11 | i12) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.f14943i;
            if (byteOrder == f14940l) {
                return (short) ((i12 << 8) + i11);
            }
            if (byteOrder == f14941m) {
                return (short) ((i11 << 8) + i12);
            }
            StringBuilder sbC = a0.b.c("Invalid byte order: ");
            sbC.append(this.f14943i);
            throw new IOException(sbC.toString());
        }

        @Override // java.io.DataInput
        public final String readUTF() throws IOException {
            this.f14945k += 2;
            return this.f14942h.readUTF();
        }

        @Override // java.io.DataInput
        public final int readUnsignedByte() throws IOException {
            this.f14945k++;
            return this.f14942h.readUnsignedByte();
        }

        @Override // java.io.DataInput
        public final int readUnsignedShort() throws IOException {
            int i10 = this.f14945k + 2;
            this.f14945k = i10;
            if (i10 > this.f14944j) {
                throw new EOFException();
            }
            int i11 = this.f14942h.read();
            int i12 = this.f14942h.read();
            if ((i11 | i12) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.f14943i;
            if (byteOrder == f14940l) {
                return (i12 << 8) + i11;
            }
            if (byteOrder == f14941m) {
                return (i11 << 8) + i12;
            }
            StringBuilder sbC = a0.b.c("Invalid byte order: ");
            sbC.append(this.f14943i);
            throw new IOException(sbC.toString());
        }

        @Override // java.io.DataInput
        public final int skipBytes(int i10) throws IOException {
            int iMin = Math.min(i10, this.f14944j - this.f14945k);
            int iSkipBytes = 0;
            while (iSkipBytes < iMin) {
                iSkipBytes += this.f14942h.skipBytes(iMin - iSkipBytes);
            }
            this.f14945k += iSkipBytes;
            return iSkipBytes;
        }

        public final long x() throws IOException {
            return ((long) readInt()) & 4294967295L;
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i10, int i11) throws IOException {
            int i12 = this.f14942h.read(bArr, i10, i11);
            this.f14945k += i12;
            return i12;
        }

        @Override // java.io.DataInput
        public final void readFully(byte[] bArr) throws IOException {
            int length = this.f14945k + bArr.length;
            this.f14945k = length;
            if (length <= this.f14944j) {
                if (this.f14942h.read(bArr, 0, bArr.length) != bArr.length) {
                    throw new IOException("Couldn't read up to the length of buffer");
                }
                return;
            }
            throw new EOFException();
        }

        public b(byte[] bArr) throws IOException {
            this(new ByteArrayInputStream(bArr));
        }
    }

    /* JADX INFO: compiled from: ExifInterface.java */
    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14949a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f14950b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f14951c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f14952d;

        public d(String str, int i10, int i11) {
            this.f14950b = str;
            this.f14949a = i10;
            this.f14951c = i11;
            this.f14952d = -1;
        }

        public d(String str, int i10) {
            this.f14950b = str;
            this.f14949a = i10;
            this.f14951c = 3;
            this.f14952d = 4;
        }
    }
}
