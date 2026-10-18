package l5;

import android.net.Uri;
import com.newrelic.agent.android.tracing.ActivityTrace;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketTimeoutException;
import java.util.Objects;

/* JADX INFO: compiled from: UdpDataSource.java */
/* JADX INFO: loaded from: classes.dex */
public final class k0 extends f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f10057e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final byte[] f10058f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final DatagramPacket f10059g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Uri f10060h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public DatagramSocket f10061i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public MulticastSocket f10062j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public InetAddress f10063k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f10064l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f10065m;

    /* JADX INFO: compiled from: UdpDataSource.java */
    public static final class a extends k {
        public a(Throwable th, int i10) {
            super(th, i10);
        }
    }

    public k0() {
        super(true);
        this.f10057e = 8000;
        byte[] bArr = new byte[ActivityTrace.MAX_TRACES];
        this.f10058f = bArr;
        this.f10059g = new DatagramPacket(bArr, 0, ActivityTrace.MAX_TRACES);
    }

    @Override // l5.h
    public final int b(byte[] bArr, int i10, int i11) throws a {
        if (i11 == 0) {
            return 0;
        }
        if (this.f10065m == 0) {
            try {
                DatagramSocket datagramSocket = this.f10061i;
                Objects.requireNonNull(datagramSocket);
                datagramSocket.receive(this.f10059g);
                int length = this.f10059g.getLength();
                this.f10065m = length;
                v(length);
            } catch (SocketTimeoutException e10) {
                throw new a(e10, 2002);
            } catch (IOException e11) {
                throw new a(e11, 2001);
            }
        }
        int length2 = this.f10059g.getLength();
        int i12 = this.f10065m;
        int iMin = Math.min(i12, i11);
        System.arraycopy(this.f10058f, length2 - i12, bArr, i10, iMin);
        this.f10065m -= iMin;
        return iMin;
    }

    @Override // l5.j
    public final void close() {
        this.f10060h = null;
        MulticastSocket multicastSocket = this.f10062j;
        if (multicastSocket != null) {
            try {
                InetAddress inetAddress = this.f10063k;
                Objects.requireNonNull(inetAddress);
                multicastSocket.leaveGroup(inetAddress);
            } catch (IOException unused) {
            }
            this.f10062j = null;
        }
        DatagramSocket datagramSocket = this.f10061i;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.f10061i = null;
        }
        this.f10063k = null;
        this.f10065m = 0;
        if (this.f10064l) {
            this.f10064l = false;
            w();
        }
    }

    @Override // l5.j
    public final long l(m mVar) throws a {
        Uri uri = mVar.f10071a;
        this.f10060h = uri;
        String host = uri.getHost();
        Objects.requireNonNull(host);
        int port = this.f10060h.getPort();
        x(mVar);
        try {
            this.f10063k = InetAddress.getByName(host);
            InetSocketAddress inetSocketAddress = new InetSocketAddress(this.f10063k, port);
            if (this.f10063k.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(inetSocketAddress);
                this.f10062j = multicastSocket;
                multicastSocket.joinGroup(this.f10063k);
                this.f10061i = this.f10062j;
            } else {
                this.f10061i = new DatagramSocket(inetSocketAddress);
            }
            this.f10061i.setSoTimeout(this.f10057e);
            this.f10064l = true;
            y(mVar);
            return -1L;
        } catch (IOException e10) {
            throw new a(e10, 2001);
        } catch (SecurityException e11) {
            throw new a(e11, 2006);
        }
    }

    @Override // l5.j
    public final Uri o() {
        return this.f10060h;
    }

    public k0(int i10) {
        super(true);
        this.f10057e = i10;
        byte[] bArr = new byte[ActivityTrace.MAX_TRACES];
        this.f10058f = bArr;
        this.f10059g = new DatagramPacket(bArr, 0, ActivityTrace.MAX_TRACES);
    }
}
