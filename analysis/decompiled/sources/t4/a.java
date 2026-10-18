package t4;

import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: AdaptationSet.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f15432a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f15433b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<j> f15434c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List<e> f15435d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List<e> f15436e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List<e> f15437f;

    public a(int i10, int i11, List<j> list, List<e> list2, List<e> list3, List<e> list4) {
        this.f15432a = i10;
        this.f15433b = i11;
        this.f15434c = Collections.unmodifiableList(list);
        this.f15435d = Collections.unmodifiableList(list2);
        this.f15436e = Collections.unmodifiableList(list3);
        this.f15437f = Collections.unmodifiableList(list4);
    }
}
