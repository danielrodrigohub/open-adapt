package androidx.work;

import android.net.Uri;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.Executor;
import k1.g;
import k1.t;

/* JADX INFO: loaded from: classes.dex */
public final class WorkerParameters {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public UUID f3032a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public b f3033b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Executor f3034c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public w1.a f3035d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public t f3036e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public g f3037f;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public List<String> f3038a = Collections.emptyList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public List<Uri> f3039b = Collections.emptyList();
    }

    public WorkerParameters(UUID uuid, b bVar, Collection collection, Executor executor, w1.a aVar, t tVar, g gVar) {
        this.f3032a = uuid;
        this.f3033b = bVar;
        new HashSet(collection);
        this.f3034c = executor;
        this.f3035d = aVar;
        this.f3036e = tVar;
        this.f3037f = gVar;
    }
}
