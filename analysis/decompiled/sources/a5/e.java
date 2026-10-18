package a5;

import java.util.Collections;
import java.util.List;
import z4.g;

/* JADX INFO: compiled from: CeaSubtitle.java */
/* JADX INFO: loaded from: classes.dex */
public final class e implements g {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List<z4.a> f455h;

    public e(List<z4.a> list) {
        this.f455h = list;
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
        return j10 >= 0 ? this.f455h : Collections.emptyList();
    }

    @Override // z4.g
    public final int j() {
        return 1;
    }
}
