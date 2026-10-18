package e;

import android.content.Context;
import android.content.Intent;
import p4.h;

/* JADX INFO: compiled from: ActivityResultContract.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class a<I, O> {

    /* JADX INFO: renamed from: e.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ActivityResultContract.kt */
    public static final class C0114a<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final T f6284a;

        public C0114a(T t10) {
            this.f6284a = t10;
        }
    }

    public abstract Intent a(Context context, I i10);

    public C0114a<O> b(Context context, I i10) {
        h.j(context, "context");
        return null;
    }

    public abstract O c(int i10, Intent intent);
}
