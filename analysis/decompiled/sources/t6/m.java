package t6;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: Splitter.java */
/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final t6.b f15546a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f15547b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f15548c;

    /* JADX INFO: compiled from: Splitter.java */
    public static abstract class a extends t6.a<String> {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final CharSequence f15549j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final t6.b f15550k;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f15553n;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f15552m = 0;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final boolean f15551l = false;

        public a(m mVar, CharSequence charSequence) {
            this.f15550k = mVar.f15546a;
            this.f15553n = mVar.f15548c;
            this.f15549j = charSequence;
        }
    }

    /* JADX INFO: compiled from: Splitter.java */
    public interface b {
    }

    public m(b bVar) {
        t6.b.d dVar = t6.b.d.f15535i;
        this.f15547b = bVar;
        this.f15546a = dVar;
        this.f15548c = Integer.MAX_VALUE;
    }

    public final List<String> a(CharSequence charSequence) {
        Objects.requireNonNull(charSequence);
        l lVar = (l) this.f15547b;
        Objects.requireNonNull(lVar);
        k kVar = new k(lVar, this, charSequence);
        ArrayList arrayList = new ArrayList();
        while (kVar.hasNext()) {
            arrayList.add(kVar.next());
        }
        return Collections.unmodifiableList(arrayList);
    }
}
