package j0;

import android.content.Context;
import android.view.GestureDetector;

/* JADX INFO: compiled from: GestureDetectorCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f9183a;

    /* JADX INFO: compiled from: GestureDetectorCompat.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final GestureDetector f9184a;

        public a(Context context, GestureDetector.OnGestureListener onGestureListener) {
            this.f9184a = new GestureDetector(context, onGestureListener, null);
        }
    }

    public e(Context context, GestureDetector.OnGestureListener onGestureListener) {
        this.f9183a = new a(context, onGestureListener);
    }
}
