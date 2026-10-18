package i5;

import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: Mp4WebvttSubtitle.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements z4.g {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List<z4.a> f8761h;

    public b(List<z4.a> list) {
        this.f8761h = Collections.unmodifiableList(list);
    }

    @Override // z4.g
    public final int b(long j10) {
        return j10 < 0 ? 0 : -1;
    }

    @Override // z4.g
    public final long g(int i10) {
        m5.a.a(i10 == 0);
        return 0L;
    }

    @Override // z4.g
    public final List<z4.a> i(long j10) {
        return j10 >= 0 ? this.f8761h : Collections.emptyList();
    }

    @Override // z4.g
    public final int j() {
        return 1;
    }
}
