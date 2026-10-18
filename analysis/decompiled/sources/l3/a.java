package l3;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.internal.http2.Http2;

/* JADX INFO: compiled from: ByteBufferUtil.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicReference<byte[]> f9918a = new AtomicReference<>();

    /* JADX INFO: compiled from: ByteBufferUtil.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f9921a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f9922b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final byte[] f9923c;

        public b(byte[] bArr, int i10, int i11) {
            this.f9923c = bArr;
            this.f9921a = i10;
            this.f9922b = i11;
        }
    }

    public static ByteBuffer a(File file) throws Throwable {
        RandomAccessFile randomAccessFile;
        FileChannel channel = null;
        try {
            long length = file.length();
            if (length > 2147483647L) {
                throw new IOException("File too large to map into memory");
            }
            if (length == 0) {
                throw new IOException("File unsuitable for memory mapping");
            }
            randomAccessFile = new RandomAccessFile(file, "r");
            try {
                channel = randomAccessFile.getChannel();
                MappedByteBuffer mappedByteBufferLoad = channel.map(FileChannel.MapMode.READ_ONLY, 0L, length).load();
                try {
                    channel.close();
                } catch (IOException unused) {
                }
                try {
                    randomAccessFile.close();
                } catch (IOException unused2) {
                }
                return mappedByteBufferLoad;
            } catch (Throwable th) {
                th = th;
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (IOException unused3) {
                    }
                }
                if (randomAccessFile == null) {
                    throw th;
                }
                try {
                    randomAccessFile.close();
                    throw th;
                } catch (IOException unused4) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile = null;
        }
    }

    public static ByteBuffer b(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Http2.INITIAL_MAX_FRAME_SIZE);
        byte[] andSet = f9918a.getAndSet(null);
        if (andSet == null) {
            andSet = new byte[Http2.INITIAL_MAX_FRAME_SIZE];
        }
        while (true) {
            int i10 = inputStream.read(andSet);
            if (i10 < 0) {
                f9918a.set(andSet);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                return c(ByteBuffer.allocateDirect(byteArray.length).put(byteArray));
            }
            byteArrayOutputStream.write(andSet, 0, i10);
        }
    }

    public static ByteBuffer c(ByteBuffer byteBuffer) {
        return (ByteBuffer) byteBuffer.position(0);
    }

    public static void d(ByteBuffer byteBuffer, File file) throws Throwable {
        RandomAccessFile randomAccessFile;
        FileChannel channel = null;
        try {
            randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                channel = randomAccessFile.getChannel();
                channel.write(byteBuffer);
                channel.force(false);
                channel.close();
                randomAccessFile.close();
                try {
                    channel.close();
                } catch (IOException unused) {
                }
                try {
                    randomAccessFile.close();
                } catch (IOException unused2) {
                }
            } catch (Throwable th) {
                th = th;
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (IOException unused3) {
                    }
                }
                if (randomAccessFile == null) {
                    throw th;
                }
                try {
                    randomAccessFile.close();
                    throw th;
                } catch (IOException unused4) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile = null;
        }
    }

    /* JADX INFO: renamed from: l3.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ByteBufferUtil.java */
    public static class C0193a extends InputStream {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final ByteBuffer f9919h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f9920i = -1;

        public C0193a(ByteBuffer byteBuffer) {
            this.f9919h = byteBuffer;
        }

        @Override // java.io.InputStream
        public final int available() {
            return this.f9919h.remaining();
        }

        @Override // java.io.InputStream
        public final synchronized void mark(int i10) {
            this.f9920i = this.f9919h.position();
        }

        @Override // java.io.InputStream
        public final boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public final int read() {
            if (this.f9919h.hasRemaining()) {
                return this.f9919h.get() & 255;
            }
            return -1;
        }

        @Override // java.io.InputStream
        public final synchronized void reset() throws IOException {
            int i10 = this.f9920i;
            if (i10 == -1) {
                throw new IOException("Cannot reset to unset mark position");
            }
            this.f9919h.position(i10);
        }

        @Override // java.io.InputStream
        public final long skip(long j10) {
            if (!this.f9919h.hasRemaining()) {
                return -1L;
            }
            long jMin = Math.min(j10, available());
            ByteBuffer byteBuffer = this.f9919h;
            byteBuffer.position((int) (((long) byteBuffer.position()) + jMin));
            return jMin;
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i10, int i11) {
            if (!this.f9919h.hasRemaining()) {
                return -1;
            }
            int iMin = Math.min(i11, available());
            this.f9919h.get(bArr, i10, iMin);
            return iMin;
        }
    }
}
