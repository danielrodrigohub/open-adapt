package p3;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: compiled from: BaseAudioProcessor.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class u implements f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public f.a f12837b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public f.a f12838c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public f.a f12839d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public f.a f12840e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ByteBuffer f12841f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ByteBuffer f12842g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f12843h;

    public u() {
        ByteBuffer byteBuffer = f.f12734a;
        this.f12841f = byteBuffer;
        this.f12842g = byteBuffer;
        f.a aVar = f.a.f12735e;
        this.f12839d = aVar;
        this.f12840e = aVar;
        this.f12837b = aVar;
        this.f12838c = aVar;
    }

    @Override // p3.f
    public ByteBuffer a() {
        ByteBuffer byteBuffer = this.f12842g;
        this.f12842g = f.f12734a;
        return byteBuffer;
    }

    @Override // p3.f
    public boolean b() {
        return this.f12843h && this.f12842g == f.f12734a;
    }

    @Override // p3.f
    public final void c() {
        this.f12843h = true;
        i();
    }

    @Override // p3.f
    public final f.a d(f.a aVar) throws f.b {
        this.f12839d = aVar;
        this.f12840e = g(aVar);
        return isActive() ? this.f12840e : f.a.f12735e;
    }

    @Override // p3.f
    public final void e() {
        flush();
        this.f12841f = f.f12734a;
        f.a aVar = f.a.f12735e;
        this.f12839d = aVar;
        this.f12840e = aVar;
        this.f12837b = aVar;
        this.f12838c = aVar;
        j();
    }

    @Override // p3.f
    public final void flush() {
        this.f12842g = f.f12734a;
        this.f12843h = false;
        this.f12837b = this.f12839d;
        this.f12838c = this.f12840e;
        h();
    }

    public abstract f.a g(f.a aVar) throws f.b;

    public void h() {
    }

    public void i() {
    }

    @Override // p3.f
    public boolean isActive() {
        return this.f12840e != f.a.f12735e;
    }

    public void j() {
    }

    public final ByteBuffer k(int i10) {
        if (this.f12841f.capacity() < i10) {
            this.f12841f = ByteBuffer.allocateDirect(i10).order(ByteOrder.nativeOrder());
        } else {
            this.f12841f.clear();
        }
        ByteBuffer byteBuffer = this.f12841f;
        this.f12842g = byteBuffer;
        return byteBuffer;
    }
}
