package m5;

import android.os.SystemClock;
import com.google.android.exoplayer2.source.dash.DashMediaSource;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.util.Arrays;
import java.util.ConcurrentModificationException;

/* JADX INFO: compiled from: SntpClient.java */
/* JADX INFO: loaded from: classes.dex */
public final class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f10482a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Object f10483b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f10484c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static long f10485d;

    /* JADX INFO: compiled from: SntpClient.java */
    public interface a {
    }

    /* JADX INFO: compiled from: SntpClient.java */
    public static final class b implements l5.d0.a<l5.d0.d> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final a f10486h;

        public b(a aVar) {
            this.f10486h = aVar;
        }

        @Override // l5.d0.a
        public final void h(l5.d0.d dVar, long j10, long j11) {
            boolean z10;
            if (this.f10486h != null) {
                synchronized (y.f10483b) {
                    z10 = y.f10484c;
                }
                if (z10) {
                    ((DashMediaSource.a) this.f10486h).a();
                    return;
                }
                a aVar = this.f10486h;
                DashMediaSource.this.B(new IOException(new ConcurrentModificationException()));
            }
        }

        @Override // l5.d0.a
        public final void k(l5.d0.d dVar, long j10, long j11, boolean z10) {
        }

        @Override // l5.d0.a
        public final l5.d0.b m(l5.d0.d dVar, long j10, long j11, IOException iOException, int i10) {
            a aVar = this.f10486h;
            if (aVar != null) {
                DashMediaSource.this.B(iOException);
            }
            return l5.d0.f9990e;
        }
    }

    /* JADX INFO: compiled from: SntpClient.java */
    public static final class c implements l5.d0.d {
        @Override // l5.d0.d
        public final void a() throws IOException {
            Object obj = y.f10482a;
            synchronized (y.f10482a) {
                Object obj2 = y.f10483b;
                synchronized (obj2) {
                    try {
                        if (y.f10484c) {
                            return;
                        }
                        long jA = y.a();
                        synchronized (obj2) {
                            y.f10485d = jA;
                            y.f10484c = true;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }

        @Override // l5.d0.d
        public final void b() {
        }
    }

    public static long a() throws IOException {
        synchronized (f10483b) {
        }
        InetAddress byName = InetAddress.getByName("time.android.com");
        DatagramSocket datagramSocket = new DatagramSocket();
        try {
            datagramSocket.setSoTimeout(10000);
            byte[] bArr = new byte[48];
            DatagramPacket datagramPacket = new DatagramPacket(bArr, 48, byName, 123);
            bArr[0] = 27;
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (jCurrentTimeMillis == 0) {
                Arrays.fill(bArr, 40, 48, (byte) 0);
            } else {
                long j10 = jCurrentTimeMillis / 1000;
                long j11 = jCurrentTimeMillis - (j10 * 1000);
                long j12 = j10 + 2208988800L;
                bArr[40] = (byte) (j12 >> 24);
                bArr[41] = (byte) (j12 >> 16);
                bArr[42] = (byte) (j12 >> 8);
                bArr[43] = (byte) (j12 >> 0);
                long j13 = (j11 * 4294967296L) / 1000;
                bArr[44] = (byte) (j13 >> 24);
                bArr[45] = (byte) (j13 >> 16);
                bArr[46] = (byte) (j13 >> 8);
                bArr[47] = (byte) (Math.random() * 255.0d);
            }
            datagramSocket.send(datagramPacket);
            datagramSocket.receive(new DatagramPacket(bArr, 48));
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            long j14 = (jElapsedRealtime2 - jElapsedRealtime) + jCurrentTimeMillis;
            byte b10 = (byte) ((bArr[0] >> 6) & 3);
            byte b11 = (byte) (bArr[0] & 7);
            int i10 = bArr[1] & 255;
            long jD = d(bArr, 24);
            long jD2 = d(bArr, 32);
            long jD3 = d(bArr, 40);
            b(b10, b11, i10, jD3);
            long j15 = (j14 + (((jD3 - j14) + (jD2 - jD)) / 2)) - jElapsedRealtime2;
            datagramSocket.close();
            return j15;
        } catch (Throwable th) {
            try {
                datagramSocket.close();
                throw th;
            } catch (Throwable th2) {
                th.addSuppressed(th2);
                throw th;
            }
        }
    }

    public static void b(byte b10, byte b11, int i10, long j10) throws IOException {
        if (b10 == 3) {
            throw new IOException("SNTP: Unsynchronized server");
        }
        if (b11 != 4 && b11 != 5) {
            throw new IOException(androidx.appcompat.widget.e0.d("SNTP: Untrusted mode: ", b11));
        }
        if (i10 == 0 || i10 > 15) {
            throw new IOException(androidx.appcompat.widget.e0.d("SNTP: Untrusted stratum: ", i10));
        }
        if (j10 == 0) {
            throw new IOException("SNTP: Zero transmitTime");
        }
    }

    public static long c(byte[] bArr, int i10) {
        int i11 = bArr[i10];
        int i12 = bArr[i10 + 1];
        int i13 = bArr[i10 + 2];
        int i14 = bArr[i10 + 3];
        if ((i11 & 128) == 128) {
            i11 = (i11 & 127) + 128;
        }
        if ((i12 & 128) == 128) {
            i12 = (i12 & 127) + 128;
        }
        if ((i13 & 128) == 128) {
            i13 = (i13 & 127) + 128;
        }
        if ((i14 & 128) == 128) {
            i14 = (i14 & 127) + 128;
        }
        return (((long) i11) << 24) + (((long) i12) << 16) + (((long) i13) << 8) + ((long) i14);
    }

    public static long d(byte[] bArr, int i10) {
        long jC = c(bArr, i10);
        long jC2 = c(bArr, i10 + 4);
        if (jC == 0 && jC2 == 0) {
            return 0L;
        }
        return ((jC2 * 1000) / 4294967296L) + ((jC - 2208988800L) * 1000);
    }
}
