package p3;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
import java.util.Objects;

/* JADX INFO: compiled from: SonicAudioProcessor.java */
/* JADX INFO: loaded from: classes.dex */
public final class f0 implements f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12740b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f12741c = 1.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f12742d = 1.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public f.a f12743e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public f.a f12744f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public f.a f12745g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public f.a f12746h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f12747i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public e0 f12748j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ByteBuffer f12749k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ShortBuffer f12750l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ByteBuffer f12751m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f12752n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f12753o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f12754p;

    public f0() {
        f.a aVar = f.a.f12735e;
        this.f12743e = aVar;
        this.f12744f = aVar;
        this.f12745g = aVar;
        this.f12746h = aVar;
        ByteBuffer byteBuffer = f.f12734a;
        this.f12749k = byteBuffer;
        this.f12750l = byteBuffer.asShortBuffer();
        this.f12751m = byteBuffer;
        this.f12740b = -1;
    }

    @Override // p3.f
    public final ByteBuffer a() {
        int i10;
        e0 e0Var = this.f12748j;
        if (e0Var != null && (i10 = e0Var.f12724m * e0Var.f12713b * 2) > 0) {
            if (this.f12749k.capacity() < i10) {
                ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(i10).order(ByteOrder.nativeOrder());
                this.f12749k = byteBufferOrder;
                this.f12750l = byteBufferOrder.asShortBuffer();
            } else {
                this.f12749k.clear();
                this.f12750l.clear();
            }
            ShortBuffer shortBuffer = this.f12750l;
            int iMin = Math.min(shortBuffer.remaining() / e0Var.f12713b, e0Var.f12724m);
            shortBuffer.put(e0Var.f12723l, 0, e0Var.f12713b * iMin);
            int i11 = e0Var.f12724m - iMin;
            e0Var.f12724m = i11;
            short[] sArr = e0Var.f12723l;
            int i12 = e0Var.f12713b;
            System.arraycopy(sArr, iMin * i12, sArr, 0, i11 * i12);
            this.f12753o += (long) i10;
            this.f12749k.limit(i10);
            this.f12751m = this.f12749k;
        }
        ByteBuffer byteBuffer = this.f12751m;
        this.f12751m = f.f12734a;
        return byteBuffer;
    }

    @Override // p3.f
    public final boolean b() {
        e0 e0Var;
        return this.f12754p && ((e0Var = this.f12748j) == null || (e0Var.f12724m * e0Var.f12713b) * 2 == 0);
    }

    @Override // p3.f
    public final void c() {
        int i10;
        e0 e0Var = this.f12748j;
        if (e0Var != null) {
            int i11 = e0Var.f12722k;
            float f10 = e0Var.f12714c;
            float f11 = e0Var.f12715d;
            int i12 = e0Var.f12724m + ((int) ((((i11 / (f10 / f11)) + e0Var.f12726o) / (e0Var.f12716e * f11)) + 0.5f));
            e0Var.f12721j = e0Var.c(e0Var.f12721j, i11, (e0Var.f12719h * 2) + i11);
            int i13 = 0;
            while (true) {
                i10 = e0Var.f12719h * 2;
                int i14 = e0Var.f12713b;
                if (i13 >= i10 * i14) {
                    break;
                }
                e0Var.f12721j[(i14 * i11) + i13] = 0;
                i13++;
            }
            e0Var.f12722k = i10 + e0Var.f12722k;
            e0Var.f();
            if (e0Var.f12724m > i12) {
                e0Var.f12724m = i12;
            }
            e0Var.f12722k = 0;
            e0Var.f12729r = 0;
            e0Var.f12726o = 0;
        }
        this.f12754p = true;
    }

    @Override // p3.f
    public final f.a d(f.a aVar) throws f.b {
        if (aVar.f12738c != 2) {
            throw new f.b(aVar);
        }
        int i10 = this.f12740b;
        if (i10 == -1) {
            i10 = aVar.f12736a;
        }
        this.f12743e = aVar;
        f.a aVar2 = new f.a(i10, aVar.f12737b, 2);
        this.f12744f = aVar2;
        this.f12747i = true;
        return aVar2;
    }

    @Override // p3.f
    public final void e() {
        this.f12741c = 1.0f;
        this.f12742d = 1.0f;
        f.a aVar = f.a.f12735e;
        this.f12743e = aVar;
        this.f12744f = aVar;
        this.f12745g = aVar;
        this.f12746h = aVar;
        ByteBuffer byteBuffer = f.f12734a;
        this.f12749k = byteBuffer;
        this.f12750l = byteBuffer.asShortBuffer();
        this.f12751m = byteBuffer;
        this.f12740b = -1;
        this.f12747i = false;
        this.f12748j = null;
        this.f12752n = 0L;
        this.f12753o = 0L;
        this.f12754p = false;
    }

    @Override // p3.f
    public final void f(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            e0 e0Var = this.f12748j;
            Objects.requireNonNull(e0Var);
            ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
            int iRemaining = byteBuffer.remaining();
            this.f12752n += (long) iRemaining;
            int iRemaining2 = shortBufferAsShortBuffer.remaining();
            int i10 = e0Var.f12713b;
            int i11 = iRemaining2 / i10;
            short[] sArrC = e0Var.c(e0Var.f12721j, e0Var.f12722k, i11);
            e0Var.f12721j = sArrC;
            shortBufferAsShortBuffer.get(sArrC, e0Var.f12722k * e0Var.f12713b, ((i10 * i11) * 2) / 2);
            e0Var.f12722k += i11;
            e0Var.f();
            byteBuffer.position(byteBuffer.position() + iRemaining);
        }
    }

    @Override // p3.f
    public final void flush() {
        if (isActive()) {
            f.a aVar = this.f12743e;
            this.f12745g = aVar;
            f.a aVar2 = this.f12744f;
            this.f12746h = aVar2;
            if (this.f12747i) {
                this.f12748j = new e0(aVar.f12736a, aVar.f12737b, this.f12741c, this.f12742d, aVar2.f12736a);
            } else {
                e0 e0Var = this.f12748j;
                if (e0Var != null) {
                    e0Var.f12722k = 0;
                    e0Var.f12724m = 0;
                    e0Var.f12726o = 0;
                    e0Var.f12727p = 0;
                    e0Var.f12728q = 0;
                    e0Var.f12729r = 0;
                    e0Var.f12730s = 0;
                    e0Var.f12731t = 0;
                    e0Var.f12732u = 0;
                    e0Var.f12733v = 0;
                }
            }
        }
        this.f12751m = f.f12734a;
        this.f12752n = 0L;
        this.f12753o = 0L;
        this.f12754p = false;
    }

    @Override // p3.f
    public final boolean isActive() {
        return this.f12744f.f12736a != -1 && (Math.abs(this.f12741c - 1.0f) >= 1.0E-4f || Math.abs(this.f12742d - 1.0f) >= 1.0E-4f || this.f12744f.f12736a != this.f12743e.f12736a);
    }
}
