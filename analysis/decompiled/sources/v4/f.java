package v4;

import android.net.Uri;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import n3.s0;

/* JADX INFO: compiled from: HlsMultivariantPlaylist.java */
/* JADX INFO: loaded from: classes.dex */
public class f extends g {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final f f16304n = new f("", Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, Collections.emptyList(), false, Collections.emptyMap(), Collections.emptyList());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List<Uri> f16305d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List<b> f16306e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List<a> f16307f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final List<a> f16308g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List<a> f16309h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List<a> f16310i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final s0 f16311j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final List<s0> f16312k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Map<String, String> f16313l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final List<r3.d> f16314m;

    /* JADX INFO: compiled from: HlsMultivariantPlaylist.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f16315a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final s0 f16316b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f16317c;

        public a(Uri uri, s0 s0Var, String str) {
            this.f16315a = uri;
            this.f16316b = s0Var;
            this.f16317c = str;
        }
    }

    /* JADX INFO: compiled from: HlsMultivariantPlaylist.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f16318a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final s0 f16319b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f16320c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final String f16321d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f16322e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f16323f;

        public b(Uri uri, s0 s0Var, String str, String str2, String str3, String str4) {
            this.f16318a = uri;
            this.f16319b = s0Var;
            this.f16320c = str;
            this.f16321d = str2;
            this.f16322e = str3;
            this.f16323f = str4;
        }
    }

    public f(String str, List<String> list, List<b> list2, List<a> list3, List<a> list4, List<a> list5, List<a> list6, s0 s0Var, List<s0> list7, boolean z10, Map<String, String> map, List<r3.d> list8) {
        super(str, list, z10);
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list2.size(); i10++) {
            Uri uri = list2.get(i10).f16318a;
            if (!arrayList.contains(uri)) {
                arrayList.add(uri);
            }
        }
        b(list3, arrayList);
        b(list4, arrayList);
        b(list5, arrayList);
        b(list6, arrayList);
        this.f16305d = Collections.unmodifiableList(arrayList);
        this.f16306e = Collections.unmodifiableList(list2);
        this.f16307f = Collections.unmodifiableList(list3);
        this.f16308g = Collections.unmodifiableList(list4);
        this.f16309h = Collections.unmodifiableList(list5);
        this.f16310i = Collections.unmodifiableList(list6);
        this.f16311j = s0Var;
        this.f16312k = list7 != null ? Collections.unmodifiableList(list7) : null;
        this.f16313l = Collections.unmodifiableMap(map);
        this.f16314m = Collections.unmodifiableList(list8);
    }

    public static void b(List<a> list, List<Uri> list2) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            Uri uri = list.get(i10).f16315a;
            if (uri != null && !list2.contains(uri)) {
                list2.add(uri);
            }
        }
    }

    public static <T> List<T> c(List<T> list, int i10, List<o4.c> list2) {
        ArrayList arrayList = new ArrayList(list2.size());
        for (int i11 = 0; i11 < list.size(); i11++) {
            T t10 = list.get(i11);
            for (int i12 = 0; i12 < list2.size(); i12++) {
                o4.c cVar = list2.get(i12);
                if (cVar.f12268i == i10 && cVar.f12269j == i11) {
                    arrayList.add(t10);
                    break;
                }
            }
        }
        return arrayList;
    }

    @Override // o4.a
    public final g a(List list) {
        return new f(this.f16324a, this.f16325b, c(this.f16306e, 0, list), Collections.emptyList(), c(this.f16308g, 1, list), c(this.f16309h, 2, list), Collections.emptyList(), this.f16311j, this.f16312k, this.f16326c, this.f16313l, this.f16314m);
    }
}
