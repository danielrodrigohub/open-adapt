package v7;

import android.os.Parcelable;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: OnBoarding.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class j implements Parcelable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final p.h<g> f16416h = new p.h<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AtomicInteger f16417i = new AtomicInteger(0);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public g f16418j;

    public abstract int a();

    public abstract int b();

    public final void c(g gVar) {
        this.f16416h.f(this.f16417i.incrementAndGet(), gVar);
    }
}
