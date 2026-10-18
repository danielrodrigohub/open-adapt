package fb;

import android.content.Context;
import hc.l0;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.CompletableFuture;
import ya.h0;

/* JADX INFO: compiled from: SessionDownload.kt */
/* JADX INFO: loaded from: classes.dex */
public final class s implements r {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f7300b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final la.b f7301c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final l0 f7302d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public r.b f7303e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final qd.l<h0<?>, fd.o> f7304f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final qd.l<Throwable, Boolean> f7305g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final File f7306h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Object f7307i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final y f7308j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f7309k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Thread f7310l;

    /* JADX INFO: compiled from: SessionDownload.kt */
    public final class a extends h0<fd.o> {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final String f7311l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final qd.a<fd.o> f7312m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final v9.a f7313n;

        /* JADX INFO: renamed from: fb.s$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: SessionDownload.kt */
        public static final class C0141a extends rd.o implements qd.a<fd.o> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ qd.l<a, fd.o> f7315h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ a f7316i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C0141a(qd.l<? super a, fd.o> lVar, a aVar) {
                super(0);
                this.f7315h = lVar;
                this.f7316i = aVar;
            }

            @Override // qd.a
            public final fd.o invoke() {
                this.f7315h.invoke(this.f7316i);
                return fd.o.f7408a;
            }
        }

        public a(String str, qd.l<? super a, fd.o> lVar) {
            this.f7311l = s.this.f7300b + " " + s.this.f7301c + " " + str;
            this.f7312m = new C0141a(lVar, this);
            UUID uuidRandomUUID = UUID.randomUUID();
            p4.h.i(uuidRandomUUID, "randomUUID()");
            this.f7313n = new v9.a(uuidRandomUUID);
        }

        @Override // ya.h0
        public final boolean m(Throwable th) {
            p4.h.j(th, "throwable");
            return s.this.f7305g.invoke(th).booleanValue();
        }

        @Override // ya.h0
        public final v9.a n() {
            return this.f7313n;
        }

        @Override // ya.h0
        public final qd.a<fd.o> o() {
            return this.f7312m;
        }

        @Override // ya.h0
        public final String p() {
            return this.f7311l;
        }

        @Override // ya.h0
        public final void s(Throwable th) {
            p4.h.j(th, "throwable");
        }

        @Override // ya.h0
        public final int u() {
            return 1;
        }

        @Override // ya.h0
        public final void w(fd.o oVar) {
            p4.h.j(oVar, "result");
        }
    }

    /* JADX INFO: compiled from: SessionDownload.kt */
    public static final class b extends rd.o implements qd.a<fd.o> {
        public b() {
            super(0);
        }

        @Override // qd.a
        public final fd.o invoke() {
            s sVar;
            try {
                s.this.f7310l = Thread.currentThread();
                boolean z10 = false;
                while (true) {
                    sVar = s.this;
                    if (!sVar.f7309k) {
                        break;
                    }
                    z10 = true;
                    CompletableFuture completableFuture = new CompletableFuture();
                    z9.a.IO.b(new v(sVar, completableFuture));
                    completableFuture.get();
                    Thread.sleep(s.this.f7303e.f7298h);
                }
                if (z10) {
                    sVar.e("sessionTransferComplete(clearTransfer)", new a0(sVar));
                }
            } catch (Throwable th) {
                if (!(th instanceof InterruptedException)) {
                    s.this.f7308j.d(th);
                }
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: SessionDownload.kt */
    public static final class c extends rd.o implements qd.l<a, fd.o> {
        public c() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(a aVar) {
            a aVar2 = aVar;
            p4.h.j(aVar2, "command");
            s.this.f7302d.K(new b0(aVar2));
            return fd.o.f7408a;
        }
    }

    public s(Context context, String str, la.b bVar, l0 l0Var, qd.l lVar, qd.l lVar2, c0 c0Var) throws IOException {
        File parentFile;
        r.b bVar2 = r.b.SLOW;
        p4.h.j(bVar, "sessionId");
        this.f7300b = str;
        this.f7301c = bVar;
        this.f7302d = l0Var;
        this.f7303e = bVar2;
        this.f7304f = lVar;
        this.f7305g = lVar2;
        File file = new File(r.a.f7294a.b(context), str + "/" + bVar.f10191h);
        if (!file.exists() && (parentFile = file.getParentFile()) != null) {
            parentFile.mkdirs();
            file.createNewFile();
        }
        this.f7306h = file;
        this.f7307i = new Object();
        y yVar = new y(c0Var, this);
        ((ya.d.m0) c0Var).f18876a = bVar;
        this.f7308j = yVar;
    }

    public static final void a(s sVar, byte[] bArr) {
        synchronized (sVar.f7307i) {
            File file = sVar.f7306h;
            p4.h.j(file, "<this>");
            FileOutputStream fileOutputStream = new FileOutputStream(file, true);
            try {
                fileOutputStream.write(bArr);
                d3.e.d(fileOutputStream, null);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    d3.e.d(fileOutputStream, th);
                    throw th2;
                }
            }
        }
    }

    public static final void b(s sVar, mc.b0 b0Var, CompletableFuture completableFuture) {
        byte[] bArrG = sVar.g();
        float length = bArrG.length;
        float f10 = b0Var.f10974c - length;
        int i10 = sVar.f7303e.f7299i;
        int i11 = f10 > ((float) i10) ? i10 : (int) f10;
        la.c cVarA = la.c.f10192n.a(b0Var, sVar.g().length);
        if (i11 >= 1) {
            sVar.e("sessionTransferData", new x(sVar, length, i11, cVarA, b0Var, completableFuture));
            return;
        }
        if (!(b0Var.f10976e == 2)) {
            completableFuture.complete(fd.o.f7408a);
            return;
        }
        sVar.f7309k = false;
        sVar.f7308j.c(cVarA);
        sVar.f7308j.b(new fd.e<>(b0Var, bArrG));
        completableFuture.complete(fd.o.f7408a);
    }

    public static final boolean c(s sVar, mc.b0 b0Var) {
        Objects.requireNonNull(sVar);
        return b0Var != null && b0Var.f10976e == 2;
    }

    public final boolean d() {
        j(false);
        try {
            synchronized (this.f7307i) {
                c3.d.s(this.f7306h, new byte[0]);
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public final void e(String str, qd.l<? super a, fd.o> lVar) {
        this.f7304f.invoke(new a(str, lVar));
    }

    public final r.b f() {
        return this.f7303e;
    }

    public final byte[] g() {
        byte[] bArrN;
        synchronized (this.f7307i) {
            bArrN = c3.d.n(this.f7306h);
        }
        return bArrN;
    }

    public final void h() {
        this.f7303e = r.b.FAST;
    }

    public final void i() {
        if (this.f7309k) {
            return;
        }
        this.f7309k = true;
        z9.a.IO.b(new b());
    }

    public final void j(boolean z10) {
        Thread thread = this.f7310l;
        if (thread != null) {
            thread.interrupt();
        }
        if (z10) {
            e("sessionCancelFirmware", new c());
        }
        this.f7309k = false;
    }
}
