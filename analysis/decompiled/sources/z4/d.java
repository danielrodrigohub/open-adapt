package z4;

import android.os.Bundle;
import android.os.Parcel;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.List;
import java.util.Objects;
import u6.p0;
import u6.v;

/* JADX INFO: compiled from: ExoplayerCuesDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final z4.b f19330a = new z4.b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final l f19331b = new l();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Deque<m> f19332c = new ArrayDeque();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f19333d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f19334e;

    /* JADX INFO: compiled from: ExoplayerCuesDecoder.java */
    public class a extends m {
        public a() {
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to z4.d$a for r4v1 'this'  java.lang.Object
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        @Override // q3.h
        public final void o() {
            /*
                r4 = this;
                z4.d r0 = z4.d.this
                java.util.Deque<z4.m> r1 = r0.f19332c
                int r1 = r1.size()
                r2 = 1
                r3 = 2
                if (r1 >= r3) goto Le
                r1 = r2
                goto Lf
            Le:
                r1 = 0
            Lf:
                m5.a.e(r1)
                java.util.Deque<z4.m> r1 = r0.f19332c
                boolean r1 = r1.contains(r4)
                r1 = r1 ^ r2
                m5.a.a(r1)
                r4.p()
                java.util.Deque<z4.m> r0 = r0.f19332c
                r0.addFirst(r4)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: z4.d.a.o():void");
        }
    }

    /* JADX INFO: compiled from: ExoplayerCuesDecoder.java */
    public static final class b implements g {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final long f19336h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final v<z4.a> f19337i;

        public b(long j10, v<z4.a> vVar) {
            this.f19336h = j10;
            this.f19337i = vVar;
        }

        @Override // z4.g
        public final int b(long j10) {
            return this.f19336h > j10 ? 0 : -1;
        }

        @Override // z4.g
        public final long g(int i10) {
            m5.a.a(i10 == 0);
            return this.f19336h;
        }

        @Override // z4.g
        public final List<z4.a> i(long j10) {
            if (j10 >= this.f19336h) {
                return this.f19337i;
            }
            u6.a aVar = v.f16002i;
            return p0.f15967l;
        }

        @Override // z4.g
        public final int j() {
            return 1;
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public d() {
        for (int i10 = 0; i10 < 2; i10++) {
            this.f19332c.addFirst(new a());
        }
        this.f19333d = 0;
    }

    @Override // q3.d
    public final void a() {
        this.f19334e = true;
    }

    @Override // z4.h
    public final void b(long j10) {
    }

    @Override // q3.d
    public final void c(l lVar) throws q3.f {
        l lVar2 = lVar;
        m5.a.e(!this.f19334e);
        m5.a.e(this.f19333d == 1);
        m5.a.a(this.f19331b == lVar2);
        this.f19333d = 2;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.ArrayDeque, java.util.Deque<z4.m>] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.ArrayDeque, java.util.Deque<z4.m>] */
    @Override // q3.d
    public final m d() throws q3.f {
        m5.a.e(!this.f19334e);
        if (this.f19333d != 2 || this.f19332c.isEmpty()) {
            return null;
        }
        m mVar = (m) this.f19332c.removeFirst();
        if (this.f19331b.l(4)) {
            mVar.k(4);
        } else {
            l lVar = this.f19331b;
            long j10 = lVar.f13583l;
            z4.b bVar = this.f19330a;
            ByteBuffer byteBuffer = lVar.f13581j;
            Objects.requireNonNull(byteBuffer);
            byte[] bArrArray = byteBuffer.array();
            Objects.requireNonNull(bVar);
            Parcel parcelObtain = Parcel.obtain();
            parcelObtain.unmarshall(bArrArray, 0, bArrArray.length);
            parcelObtain.setDataPosition(0);
            Bundle bundle = parcelObtain.readBundle(Bundle.class.getClassLoader());
            parcelObtain.recycle();
            ArrayList parcelableArrayList = bundle.getParcelableArrayList("c");
            Objects.requireNonNull(parcelableArrayList);
            mVar.q(this.f19331b.f13583l, new b(j10, m5.b.a(z4.a.f19293z, parcelableArrayList)), 0L);
        }
        this.f19331b.o();
        this.f19333d = 0;
        return mVar;
    }

    @Override // q3.d
    public final l e() throws q3.f {
        m5.a.e(!this.f19334e);
        if (this.f19333d != 0) {
            return null;
        }
        this.f19333d = 1;
        return this.f19331b;
    }

    @Override // q3.d
    public final void flush() {
        m5.a.e(!this.f19334e);
        this.f19331b.o();
        this.f19333d = 0;
    }
}
