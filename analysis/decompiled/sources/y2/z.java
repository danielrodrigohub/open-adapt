package y2;

import android.graphics.Bitmap;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;

/* JADX INFO: compiled from: StreamBitmapDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class z implements p2.j<InputStream, Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final n f18512a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s2.b f18513b;

    /* JADX INFO: compiled from: StreamBitmapDecoder.java */
    public static class a implements n.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final x f18514a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final l3.d f18515b;

        public a(x xVar, l3.d dVar) {
            this.f18514a = xVar;
            this.f18515b = dVar;
        }

        @Override // y2.n.b
        public final void a(s2.d dVar, Bitmap bitmap) throws IOException {
            IOException iOException = this.f18515b.f9929i;
            if (iOException != null) {
                if (bitmap == null) {
                    throw iOException;
                }
                dVar.e(bitmap);
                throw iOException;
            }
        }

        @Override // y2.n.b
        public final void b() {
            x xVar = this.f18514a;
            synchronized (xVar) {
                xVar.f18506j = xVar.f18504h.length;
            }
        }
    }

    public z(n nVar, s2.b bVar) {
        this.f18512a = nVar;
        this.f18513b = bVar;
    }

    @Override // p2.j
    public final boolean a(InputStream inputStream, p2.h hVar) throws IOException {
        Objects.requireNonNull(this.f18512a);
        return true;
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.ArrayDeque, java.util.Queue<l3.d>] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.util.ArrayDeque, java.util.Queue<l3.d>] */
    @Override // p2.j
    public final r2.w<Bitmap> b(InputStream inputStream, int i10, int i11, p2.h hVar) throws IOException {
        x xVar;
        boolean z10;
        l3.d dVar;
        InputStream inputStream2 = inputStream;
        if (inputStream2 instanceof x) {
            z10 = false;
            xVar = (x) inputStream2;
        } else {
            xVar = new x(inputStream2, this.f18513b);
            z10 = true;
        }
        ?? r10 = l3.d.f9927j;
        synchronized (r10) {
            dVar = (l3.d) r10.poll();
        }
        if (dVar == null) {
            dVar = new l3.d();
        }
        l3.d dVar2 = dVar;
        dVar2.f9928h = xVar;
        l3.j jVar = new l3.j(dVar2);
        a aVar = new a(xVar, dVar2);
        try {
            n nVar = this.f18512a;
            r2.w<Bitmap> wVarA = nVar.a(new t.b(jVar, nVar.f18474d, nVar.f18473c), i10, i11, hVar, aVar);
            dVar2.f9929i = null;
            dVar2.f9928h = null;
            synchronized (r10) {
                r10.offer(dVar2);
            }
            return wVarA;
        } finally {
            dVar2.f9929i = null;
            dVar2.f9928h = null;
            ?? r11 = l3.d.f9927j;
            synchronized (r11) {
                r11.offer(dVar2);
                if (z10) {
                    xVar.Y();
                }
            }
        }
    }
}
