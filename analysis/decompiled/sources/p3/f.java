package p3;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: compiled from: AudioProcessor.java */
/* JADX INFO: loaded from: classes.dex */
public interface f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ByteBuffer f12734a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    /* JADX INFO: compiled from: AudioProcessor.java */
    public static final class a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final a f12735e = new a(-1, -1, -1);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f12736a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f12737b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f12738c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f12739d;

        public a(int i10, int i11, int i12) {
            this.f12736a = i10;
            this.f12737b = i11;
            this.f12738c = i12;
            this.f12739d = m5.g0.I(i12) ? m5.g0.z(i12, i11) : -1;
        }

        public final String toString() {
            StringBuilder sbC = a0.b.c("AudioFormat[sampleRate=");
            sbC.append(this.f12736a);
            sbC.append(", channelCount=");
            sbC.append(this.f12737b);
            sbC.append(", encoding=");
            return a0.b.b(sbC, this.f12738c, ']');
        }
    }

    /* JADX INFO: compiled from: AudioProcessor.java */
    public static final class b extends Exception {
        public b(a aVar) {
            super("Unhandled format: " + aVar);
        }
    }

    ByteBuffer a();

    boolean b();

    void c();

    a d(a aVar) throws b;

    void e();

    void f(ByteBuffer byteBuffer);

    void flush();

    boolean isActive();
}
