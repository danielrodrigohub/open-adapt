package p4;

import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: BundledExtractorsAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final s3.l f12932a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public s3.h f12933b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public s3.e f12934c;

    public c(s3.l lVar) {
        this.f12932a = lVar;
    }

    public final long a() {
        s3.e eVar = this.f12934c;
        if (eVar != null) {
            return eVar.f15040d;
        }
        return -1L;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x005d  */
    public final void b(l5.h hVar, Uri uri, Map<String, List<String>> map, long j10, long j11, s3.j jVar) throws IOException {
        s3.e eVar = new s3.e(hVar, j10, j11);
        this.f12934c = eVar;
        if (this.f12933b != null) {
            return;
        }
        s3.h[] hVarArrE = this.f12932a.e(uri, map);
        boolean z10 = true;
        if (hVarArrE.length == 1) {
            this.f12933b = hVarArrE[0];
        } else {
            for (s3.h hVar2 : hVarArrE) {
                try {
                    if (hVar2.j(eVar)) {
                        this.f12933b = hVar2;
                        eVar.f15042f = 0;
                        break;
                    }
                    boolean z11 = this.f12933b != null || eVar.f15040d == j10;
                    m5.a.e(z11);
                    eVar.f15042f = 0;
                } catch (EOFException unused) {
                    if (this.f12933b != null || eVar.f15040d == j10) {
                    }
                } catch (Throwable th) {
                    if (this.f12933b == null && eVar.f15040d != j10) {
                        z10 = false;
                    }
                    m5.a.e(z10);
                    eVar.f15042f = 0;
                    throw th;
                }
                m5.a.e(z11);
                eVar.f15042f = 0;
            }
            if (this.f12933b == null) {
                StringBuilder sbC = a0.b.c("None of the available extractors (");
                int i10 = m5.g0.f10384a;
                StringBuilder sb2 = new StringBuilder();
                for (int i11 = 0; i11 < hVarArrE.length; i11++) {
                    sb2.append(hVarArrE[i11].getClass().getSimpleName());
                    if (i11 < hVarArrE.length - 1) {
                        sb2.append(", ");
                    }
                }
                sbC.append(sb2.toString());
                sbC.append(") could read the stream.");
                String string = sbC.toString();
                Objects.requireNonNull(uri);
                throw new v0(string);
            }
        }
        this.f12933b.g(jVar);
    }
}
