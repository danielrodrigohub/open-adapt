package y2;

import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Objects;

/* JADX INFO: compiled from: DefaultImageHeaderParser.java */
/* JADX INFO: loaded from: classes.dex */
public final class l implements ImageHeaderParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f18453a = "Exif\u0000\u0000".getBytes(Charset.forName("UTF-8"));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f18454b = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* JADX INFO: compiled from: DefaultImageHeaderParser.java */
    public static final class a implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ByteBuffer f18455a;

        public a(ByteBuffer byteBuffer) {
            this.f18455a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // y2.l.c
        public final long a(long j10) {
            int iMin = (int) Math.min(this.f18455a.remaining(), j10);
            ByteBuffer byteBuffer = this.f18455a;
            byteBuffer.position(byteBuffer.position() + iMin);
            return iMin;
        }

        @Override // y2.l.c
        public final int b(byte[] bArr, int i10) {
            int iMin = Math.min(i10, this.f18455a.remaining());
            if (iMin == 0) {
                return -1;
            }
            this.f18455a.get(bArr, 0, iMin);
            return iMin;
        }

        @Override // y2.l.c
        public final short c() throws c.a {
            if (this.f18455a.remaining() >= 1) {
                return (short) (this.f18455a.get() & 255);
            }
            throw new c.a();
        }

        @Override // y2.l.c
        public final int d() throws c.a {
            return (c() << 8) | c();
        }
    }

    /* JADX INFO: compiled from: DefaultImageHeaderParser.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ByteBuffer f18456a;

        public b(byte[] bArr, int i10) {
            this.f18456a = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i10);
        }

        public final short a(int i10) {
            if (this.f18456a.remaining() - i10 >= 2) {
                return this.f18456a.getShort(i10);
            }
            return (short) -1;
        }

        public final int b(int i10) {
            if (this.f18456a.remaining() - i10 >= 4) {
                return this.f18456a.getInt(i10);
            }
            return -1;
        }
    }

    /* JADX INFO: compiled from: DefaultImageHeaderParser.java */
    public interface c {

        /* JADX INFO: compiled from: DefaultImageHeaderParser.java */
        public static final class a extends IOException {
            public a() {
                super("Unexpectedly reached end of a file");
            }
        }

        long a(long j10) throws IOException;

        int b(byte[] bArr, int i10) throws IOException;

        short c() throws IOException;

        int d() throws IOException;
    }

    /* JADX INFO: compiled from: DefaultImageHeaderParser.java */
    public static final class d implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final InputStream f18457a;

        public d(InputStream inputStream) {
            this.f18457a = inputStream;
        }

        @Override // y2.l.c
        public final long a(long j10) throws IOException {
            if (j10 < 0) {
                return 0L;
            }
            long j11 = j10;
            while (j11 > 0) {
                long jSkip = this.f18457a.skip(j11);
                if (jSkip <= 0) {
                    if (this.f18457a.read() == -1) {
                        break;
                    }
                    jSkip = 1;
                }
                j11 -= jSkip;
            }
            return j10 - j11;
        }

        @Override // y2.l.c
        public final int b(byte[] bArr, int i10) throws IOException {
            int i11 = 0;
            int i12 = 0;
            while (i11 < i10 && (i12 = this.f18457a.read(bArr, i11, i10 - i11)) != -1) {
                i11 += i12;
            }
            if (i11 == 0 && i12 == -1) {
                throw new c.a();
            }
            return i11;
        }

        @Override // y2.l.c
        public final short c() throws IOException {
            int i10 = this.f18457a.read();
            if (i10 != -1) {
                return (short) i10;
            }
            throw new c.a();
        }

        @Override // y2.l.c
        public final int d() throws IOException {
            return (c() << 8) | c();
        }
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final ImageHeaderParser.ImageType a(ByteBuffer byteBuffer) throws IOException {
        Objects.requireNonNull(byteBuffer, "Argument must not be null");
        return f(new a(byteBuffer));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final int b(InputStream inputStream, s2.b bVar) throws IOException {
        Objects.requireNonNull(inputStream, "Argument must not be null");
        d dVar = new d(inputStream);
        Objects.requireNonNull(bVar, "Argument must not be null");
        return e(dVar, bVar);
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final int c(ByteBuffer byteBuffer, s2.b bVar) throws IOException {
        Objects.requireNonNull(byteBuffer, "Argument must not be null");
        a aVar = new a(byteBuffer);
        Objects.requireNonNull(bVar, "Argument must not be null");
        return e(aVar, bVar);
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final ImageHeaderParser.ImageType d(InputStream inputStream) throws IOException {
        Objects.requireNonNull(inputStream, "Argument must not be null");
        return f(new d(inputStream));
    }

    public final int e(c cVar, s2.b bVar) throws IOException {
        try {
            int iD = cVar.d();
            if (!((iD & 65496) == 65496 || iD == 19789 || iD == 18761)) {
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Parser doesn't handle magic number: " + iD);
                }
                return -1;
            }
            int iG = g(cVar);
            if (iG == -1) {
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Failed to parse exif segment length, or exif segment not found");
                }
                return -1;
            }
            byte[] bArr = (byte[]) bVar.d(iG, byte[].class);
            try {
                return h(cVar, bArr, iG);
            } finally {
                bVar.c(bArr);
            }
        } catch (c.a unused) {
            return -1;
        }
    }

    public final ImageHeaderParser.ImageType f(c cVar) throws IOException {
        try {
            int iD = cVar.d();
            if (iD == 65496) {
                return ImageHeaderParser.ImageType.JPEG;
            }
            int iC = (iD << 8) | cVar.c();
            if (iC == 4671814) {
                return ImageHeaderParser.ImageType.GIF;
            }
            int iC2 = (iC << 8) | cVar.c();
            if (iC2 == -1991225785) {
                cVar.a(21L);
                try {
                    return cVar.c() >= 3 ? ImageHeaderParser.ImageType.PNG_A : ImageHeaderParser.ImageType.PNG;
                } catch (c.a unused) {
                    return ImageHeaderParser.ImageType.PNG;
                }
            }
            if (iC2 == 1380533830) {
                cVar.a(4L);
                if (((cVar.d() << 16) | cVar.d()) != 1464156752) {
                    return ImageHeaderParser.ImageType.UNKNOWN;
                }
                int iD2 = (cVar.d() << 16) | cVar.d();
                if ((iD2 & (-256)) != 1448097792) {
                    return ImageHeaderParser.ImageType.UNKNOWN;
                }
                int i10 = iD2 & 255;
                if (i10 != 88) {
                    if (i10 != 76) {
                        return ImageHeaderParser.ImageType.WEBP;
                    }
                    cVar.a(4L);
                    return (cVar.c() & 8) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
                }
                cVar.a(4L);
                short sC = cVar.c();
                if ((sC & 2) != 0) {
                    return ImageHeaderParser.ImageType.ANIMATED_WEBP;
                }
                return (sC & 16) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
            }
            boolean z10 = false;
            if (((cVar.d() << 16) | cVar.d()) == 1718909296) {
                int iD3 = (cVar.d() << 16) | cVar.d();
                if (iD3 == 1635150182 || iD3 == 1635150195) {
                    z10 = true;
                    break;
                }
                cVar.a(4L);
                int i11 = iC2 - 16;
                if (i11 % 4 == 0) {
                    int i12 = 0;
                    while (i12 < 5 && i11 > 0) {
                        int iD4 = (cVar.d() << 16) | cVar.d();
                        if (iD4 != 1635150182 && iD4 != 1635150195) {
                            i12++;
                            i11 -= 4;
                        }
                        z10 = true;
                    }
                }
            }
            return z10 ? ImageHeaderParser.ImageType.AVIF : ImageHeaderParser.ImageType.UNKNOWN;
        } catch (c.a unused2) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
    }

    public final int g(c cVar) throws IOException {
        short sC;
        int iD;
        long j10;
        long jA;
        do {
            short sC2 = cVar.c();
            if (sC2 != 255) {
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Unknown segmentId=" + ((int) sC2));
                }
                return -1;
            }
            sC = cVar.c();
            if (sC == 218) {
                return -1;
            }
            if (sC == 217) {
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Found MARKER_EOI in exif segment");
                }
                return -1;
            }
            iD = cVar.d() - 2;
            if (sC == 225) {
                return iD;
            }
            j10 = iD;
            jA = cVar.a(j10);
        } while (jA == j10);
        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
            StringBuilder sbB = androidx.recyclerview.widget.s.b("Unable to skip enough data, type: ", sC, ", wanted to skip: ", iD, ", but actually skipped: ");
            sbB.append(jA);
            Log.d("DfltImageHeaderParser", sbB.toString());
        }
        return -1;
    }

    public final int h(c cVar, byte[] bArr, int i10) throws IOException {
        ByteOrder byteOrder;
        int iB = cVar.b(bArr, i10);
        if (iB != i10) {
            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Unable to read exif segment data, length: " + i10 + ", actually read: " + iB);
            }
            return -1;
        }
        boolean z10 = bArr != null && i10 > f18453a.length;
        if (z10) {
            int i11 = 0;
            while (true) {
                byte[] bArr2 = f18453a;
                if (i11 >= bArr2.length) {
                    break;
                }
                if (bArr[i11] != bArr2[i11]) {
                    z10 = false;
                    break;
                }
                i11++;
            }
        }
        if (!z10) {
            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Missing jpeg exif preamble");
            }
            return -1;
        }
        b bVar = new b(bArr, i10);
        short sA = bVar.a(6);
        if (sA != 18761) {
            if (sA != 19789 && Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Unknown endianness = " + ((int) sA));
            }
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        }
        bVar.f18456a.order(byteOrder);
        int iB2 = bVar.b(10) + 6;
        short sA2 = bVar.a(iB2);
        for (int i12 = 0; i12 < sA2; i12++) {
            int i13 = (i12 * 12) + iB2 + 2;
            short sA3 = bVar.a(i13);
            if (sA3 == 274) {
                short sA4 = bVar.a(i13 + 2);
                if (sA4 >= 1 && sA4 <= 12) {
                    int iB3 = bVar.b(i13 + 4);
                    if (iB3 >= 0) {
                        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            StringBuilder sbB = androidx.recyclerview.widget.s.b("Got tagIndex=", i12, " tagType=", sA3, " formatCode=");
                            sbB.append((int) sA4);
                            sbB.append(" componentCount=");
                            sbB.append(iB3);
                            Log.d("DfltImageHeaderParser", sbB.toString());
                        }
                        int i14 = iB3 + f18454b[sA4];
                        if (i14 <= 4) {
                            int i15 = i13 + 8;
                            if (i15 >= 0 && i15 <= bVar.f18456a.remaining()) {
                                if (i14 >= 0 && i14 + i15 <= bVar.f18456a.remaining()) {
                                    return bVar.a(i15);
                                }
                                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                    Log.d("DfltImageHeaderParser", "Illegal number of bytes for TI tag data tagType=" + ((int) sA3));
                                }
                            } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                Log.d("DfltImageHeaderParser", "Illegal tagValueOffset=" + i15 + " tagType=" + ((int) sA3));
                            }
                        } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            Log.d("DfltImageHeaderParser", "Got byte count > 4, not orientation, continuing, formatCode=" + ((int) sA4));
                        }
                    } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                        Log.d("DfltImageHeaderParser", "Negative tiff component count");
                    }
                } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Got invalid format code = " + ((int) sA4));
                }
            }
        }
        return -1;
    }
}
