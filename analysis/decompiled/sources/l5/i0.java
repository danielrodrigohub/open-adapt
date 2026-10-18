package l5;

import android.net.Uri;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: StatsDataSource.java */
/* JADX INFO: loaded from: classes.dex */
public final class i0 implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final j f10051a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f10052b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Uri f10053c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Map<String, List<String>> f10054d;

    public i0(j jVar) {
        Objects.requireNonNull(jVar);
        this.f10051a = jVar;
        this.f10053c = Uri.EMPTY;
        this.f10054d = Collections.emptyMap();
    }

    @Override // l5.h
    public final int b(byte[] bArr, int i10, int i11) throws IOException {
        int iB = this.f10051a.b(bArr, i10, i11);
        if (iB != -1) {
            this.f10052b += (long) iB;
        }
        return iB;
    }

    @Override // l5.j
    public final void close() throws IOException {
        this.f10051a.close();
    }

    @Override // l5.j
    public final Map<String, List<String>> h() {
        return this.f10051a.h();
    }

    @Override // l5.j
    public final void j(j0 j0Var) {
        Objects.requireNonNull(j0Var);
        this.f10051a.j(j0Var);
    }

    @Override // l5.j
    public final long l(m mVar) throws IOException {
        this.f10053c = mVar.f10071a;
        this.f10054d = Collections.emptyMap();
        long jL = this.f10051a.l(mVar);
        Uri uriO = o();
        Objects.requireNonNull(uriO);
        this.f10053c = uriO;
        this.f10054d = h();
        return jL;
    }

    @Override // l5.j
    public final Uri o() {
        return this.f10051a.o();
    }
}
