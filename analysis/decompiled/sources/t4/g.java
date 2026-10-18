package t4;

import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: Period.java */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f15476a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f15477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<a> f15478c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List<f> f15479d;

    public g(String str, long j10, List<a> list, List<f> list2) {
        this.f15476a = str;
        this.f15477b = j10;
        this.f15478c = Collections.unmodifiableList(list);
        this.f15479d = Collections.unmodifiableList(list2);
    }

    public g(String str, long j10, List<a> list, List<f> list2, e eVar) {
        this.f15476a = str;
        this.f15477b = j10;
        this.f15478c = Collections.unmodifiableList(list);
        this.f15479d = Collections.unmodifiableList(list2);
    }
}
