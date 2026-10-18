package s3;

import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import java.io.EOFException;
import java.io.IOException;
import n3.s0;

/* JADX INFO: compiled from: DummyTrackOutput.java */
/* JADX INFO: loaded from: classes.dex */
public final class g implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f15049a = new byte[AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH];

    @Override // s3.w
    public final void a(m5.w wVar, int i10) {
        wVar.E(i10);
    }

    @Override // s3.w
    public final void b(s0 s0Var) {
    }

    @Override // s3.w
    public final void c(long j10, int i10, int i11, int i12, w.a aVar) {
    }

    @Override // s3.w
    public final int e(l5.h hVar, int i10, boolean z10) throws IOException {
        int iB = hVar.b(this.f15049a, 0, Math.min(this.f15049a.length, i10));
        if (iB != -1) {
            return iB;
        }
        if (z10) {
            return -1;
        }
        throw new EOFException();
    }
}
