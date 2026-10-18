package androidx.appcompat.widget;

import android.content.Context;
import android.content.ContextWrapper;

/* JADX INFO: compiled from: TintContextWrapper.java */
/* JADX INFO: loaded from: classes.dex */
public final class c1 extends ContextWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f1215a = new Object();

    public static Context a(Context context) {
        if (!(context instanceof c1) && !(context.getResources() instanceof e1)) {
            context.getResources();
            int i10 = n1.f1385a;
        }
        return context;
    }
}
