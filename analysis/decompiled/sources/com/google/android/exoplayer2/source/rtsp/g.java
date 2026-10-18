package com.google.android.exoplayer2.source.rtsp;

import android.os.Handler;
import android.os.HandlerThread;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import l5.d0;
import n3.i1;
import u6.v;

/* JADX INFO: compiled from: RtspMessageChannel.java */
/* JADX INFO: loaded from: classes.dex */
public final class g implements Closeable {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final Charset f4736n = t6.c.f15538c;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final c f4737h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final d0 f4738i = new d0("ExoPlayer:RtspMessageChannel:ReceiverLoader");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Map<Integer, a> f4739j = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public f f4740k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Socket f4741l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public volatile boolean f4742m;

    /* JADX INFO: compiled from: RtspMessageChannel.java */
    public interface a {
        void m(byte[] bArr);
    }

    /* JADX INFO: compiled from: RtspMessageChannel.java */
    public final class b implements d0.a<e> {
        public b() {
        }

        @Override // l5.d0.a
        public final /* bridge */ /* synthetic */ void h(d0.d dVar, long j10, long j11) {
        }

        @Override // l5.d0.a
        public final /* bridge */ /* synthetic */ void k(d0.d dVar, long j10, long j11, boolean z10) {
        }

        @Override // l5.d0.a
        public final d0.b m(d0.d dVar, long j10, long j11, IOException iOException, int i10) {
            if (!g.this.f4742m) {
                Objects.requireNonNull(g.this.f4737h);
            }
            return d0.f9990e;
        }
    }

    /* JADX INFO: compiled from: RtspMessageChannel.java */
    public interface c {
    }

    /* JADX INFO: compiled from: RtspMessageChannel.java */
    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List<String> f4744a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f4745b = 1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f4746c;

        public static byte[] b(byte b10, DataInputStream dataInputStream) throws IOException {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = {b10, dataInputStream.readByte()};
            byteArrayOutputStream.write(bArr);
            while (true) {
                if (bArr[0] == 13 && bArr[1] == 10) {
                    return byteArrayOutputStream.toByteArray();
                }
                bArr[0] = bArr[1];
                bArr[1] = dataInputStream.readByte();
                byteArrayOutputStream.write(bArr[1]);
            }
        }

        /* JADX WARN: Type inference failed for: r0v5, types: [java.util.ArrayList, java.util.List<java.lang.String>] */
        /* JADX WARN: Type inference failed for: r7v1, types: [java.util.ArrayList, java.util.List<java.lang.String>] */
        public final v<String> a(byte[] bArr) throws i1 {
            long j10;
            m5.a.a(bArr.length >= 2 && bArr[bArr.length - 2] == 13 && bArr[bArr.length - 1] == 10);
            String str = new String(bArr, 0, bArr.length - 2, g.f4736n);
            this.f4744a.add(str);
            int i10 = this.f4745b;
            if (i10 == 1) {
                if (!(h.f4755a.matcher(str).matches() || h.f4756b.matcher(str).matches())) {
                    return null;
                }
                this.f4745b = 2;
                return null;
            }
            if (i10 != 2) {
                throw new IllegalStateException();
            }
            Pattern pattern = h.f4755a;
            try {
                Matcher matcher = h.f4757c.matcher(str);
                if (matcher.find()) {
                    String strGroup = matcher.group(1);
                    Objects.requireNonNull(strGroup);
                    j10 = Long.parseLong(strGroup);
                } else {
                    j10 = -1;
                }
                if (j10 != -1) {
                    this.f4746c = j10;
                }
                if (!str.isEmpty()) {
                    return null;
                }
                if (this.f4746c > 0) {
                    this.f4745b = 3;
                    return null;
                }
                v<String> vVarS = v.s(this.f4744a);
                this.f4744a.clear();
                this.f4745b = 1;
                this.f4746c = 0L;
                return vVarS;
            } catch (NumberFormatException e10) {
                throw i1.b(str, e10);
            }
        }
    }

    /* JADX INFO: compiled from: RtspMessageChannel.java */
    public final class e implements d0.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final DataInputStream f4747a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final d f4748b = new d();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public volatile boolean f4749c;

        public e(InputStream inputStream) {
            this.f4747a = new DataInputStream(inputStream);
        }

        /* JADX WARN: Code duplicated, block: B:35:0x009d  */
        /* JADX WARN: Type inference failed for: r0v17, types: [java.util.ArrayList, java.util.List<java.lang.String>] */
        /* JADX WARN: Type inference failed for: r5v6, types: [java.util.ArrayList, java.util.List<java.lang.String>] */
        @Override // l5.d0.d
        public final void a() throws IOException {
            String str;
            while (!this.f4749c) {
                byte b10 = this.f4747a.readByte();
                if (b10 == 36) {
                    int unsignedByte = this.f4747a.readUnsignedByte();
                    int unsignedShort = this.f4747a.readUnsignedShort();
                    byte[] bArr = new byte[unsignedShort];
                    this.f4747a.readFully(bArr, 0, unsignedShort);
                    a aVar = g.this.f4739j.get(Integer.valueOf(unsignedByte));
                    if (aVar != null && !g.this.f4742m) {
                        aVar.m(bArr);
                    }
                } else if (g.this.f4742m) {
                    continue;
                } else {
                    c cVar = g.this.f4737h;
                    d dVar = this.f4748b;
                    DataInputStream dataInputStream = this.f4747a;
                    Objects.requireNonNull(dVar);
                    v<String> vVarA = dVar.a(d.b(b10, dataInputStream));
                    while (vVarA == null) {
                        if (dVar.f4745b == 3) {
                            long j10 = dVar.f4746c;
                            if (j10 <= 0) {
                                throw new IllegalStateException("Expects a greater than zero Content-Length.");
                            }
                            int iA = w6.a.a(j10);
                            m5.a.e(iA != -1);
                            byte[] bArr2 = new byte[iA];
                            dataInputStream.readFully(bArr2, 0, iA);
                            m5.a.e(dVar.f4745b == 3);
                            if (iA > 0) {
                                int i10 = iA - 1;
                                if (bArr2[i10] == 10) {
                                    if (iA > 1) {
                                        int i11 = iA - 2;
                                        if (bArr2[i11] == 13) {
                                            str = new String(bArr2, 0, i11, g.f4736n);
                                        } else {
                                            str = new String(bArr2, 0, i10, g.f4736n);
                                        }
                                    } else {
                                        str = new String(bArr2, 0, i10, g.f4736n);
                                    }
                                    dVar.f4744a.add(str);
                                    vVarA = v.s(dVar.f4744a);
                                    dVar.f4744a.clear();
                                    dVar.f4745b = 1;
                                    dVar.f4746c = 0L;
                                }
                            }
                            throw new IllegalArgumentException("Message body is empty or does not end with a LF.");
                        }
                        vVarA = dVar.a(d.b(dataInputStream.readByte(), dataInputStream));
                    }
                    com.google.android.exoplayer2.source.rtsp.d.b bVar = (com.google.android.exoplayer2.source.rtsp.d.b) cVar;
                    bVar.f4697a.post(new y0.v(bVar, vVarA, 4));
                }
            }
        }

        @Override // l5.d0.d
        public final void b() {
            this.f4749c = true;
        }
    }

    /* JADX INFO: compiled from: RtspMessageChannel.java */
    public final class f implements Closeable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final OutputStream f4751h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final HandlerThread f4752i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final Handler f4753j;

        public f(OutputStream outputStream) {
            this.f4751h = outputStream;
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:RtspMessageChannel:Sender");
            this.f4752i = handlerThread;
            handlerThread.start();
            this.f4753j = new Handler(handlerThread.getLooper());
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            Handler handler = this.f4753j;
            HandlerThread handlerThread = this.f4752i;
            Objects.requireNonNull(handlerThread);
            handler.post(new w4.h(handlerThread, 0));
            try {
                this.f4752i.join();
            } catch (InterruptedException unused) {
                this.f4752i.interrupt();
            }
        }
    }

    public g(c cVar) {
        this.f4737h = cVar;
    }

    public final void Y(final List<String> list) {
        m5.a.f(this.f4740k);
        final f fVar = this.f4740k;
        Objects.requireNonNull(fVar);
        final byte[] bytes = new t6.e(h.f4762h).b(list).getBytes(f4736n);
        fVar.f4753j.post(new Runnable() { // from class: w4.i
            @Override // java.lang.Runnable
            public final void run() {
                com.google.android.exoplayer2.source.rtsp.g.f fVar2 = fVar;
                byte[] bArr = bytes;
                Objects.requireNonNull(fVar2);
                try {
                    fVar2.f4751h.write(bArr);
                } catch (Exception unused) {
                    if (com.google.android.exoplayer2.source.rtsp.g.this.f4742m) {
                        return;
                    }
                    Objects.requireNonNull(com.google.android.exoplayer2.source.rtsp.g.this.f4737h);
                }
            }
        });
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f4742m) {
            return;
        }
        try {
            f fVar = this.f4740k;
            if (fVar != null) {
                fVar.close();
            }
            this.f4738i.f(null);
            Socket socket = this.f4741l;
            if (socket != null) {
                socket.close();
            }
        } finally {
            this.f4742m = true;
        }
    }

    public final void x(Socket socket) throws IOException {
        this.f4741l = socket;
        this.f4740k = new f(socket.getOutputStream());
        this.f4738i.g(new e(socket.getInputStream()), new b(), 0);
    }
}
