package v4;

import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: HlsPlaylist.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class g implements o4.a<g> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f16324a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List<String> f16325b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f16326c;

    public g(String str, List<String> list, boolean z10) {
        this.f16324a = str;
        this.f16325b = Collections.unmodifiableList(list);
        this.f16326c = z10;
    }
}
