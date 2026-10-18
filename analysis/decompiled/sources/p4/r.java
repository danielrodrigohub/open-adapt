package p4;

import android.net.Uri;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: LoadEventInfo.java */
/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final AtomicLong f13184b = new AtomicLong();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<String, List<String>> f13185a;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public r(long j10, l5.m mVar, long j11) {
        this(Collections.emptyMap());
        Uri uri = mVar.f10071a;
    }

    public static long a() {
        return f13184b.getAndIncrement();
    }

    public r(Map map) {
        this.f13185a = map;
    }
}
