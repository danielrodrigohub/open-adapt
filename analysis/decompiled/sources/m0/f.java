package m0;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.view.inputmethod.InputContentInfo;

/* JADX INFO: compiled from: InputContentInfoCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f10263a;

    /* JADX INFO: compiled from: InputContentInfoCompat.java */
    public static final class b implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f10265a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ClipDescription f10266b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Uri f10267c;

        public b(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.f10265a = uri;
            this.f10266b = clipDescription;
            this.f10267c = uri2;
        }

        @Override // m0.f.c
        public final ClipDescription a() {
            return this.f10266b;
        }

        @Override // m0.f.c
        public final Object b() {
            return null;
        }

        @Override // m0.f.c
        public final Uri c() {
            return this.f10265a;
        }

        @Override // m0.f.c
        public final void d() {
        }

        @Override // m0.f.c
        public final Uri e() {
            return this.f10267c;
        }
    }

    /* JADX INFO: compiled from: InputContentInfoCompat.java */
    public interface c {
        ClipDescription a();

        Object b();

        Uri c();

        void d();

        Uri e();
    }

    public f(Uri uri, ClipDescription clipDescription, Uri uri2) {
        if (Build.VERSION.SDK_INT >= 25) {
            this.f10263a = new a(uri, clipDescription, uri2);
        } else {
            this.f10263a = new b(uri, clipDescription, uri2);
        }
    }

    /* JADX INFO: compiled from: InputContentInfoCompat.java */
    public static final class a implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final InputContentInfo f10264a;

        public a(Object obj) {
            this.f10264a = (InputContentInfo) obj;
        }

        @Override // m0.f.c
        public final ClipDescription a() {
            return this.f10264a.getDescription();
        }

        @Override // m0.f.c
        public final Object b() {
            return this.f10264a;
        }

        @Override // m0.f.c
        public final Uri c() {
            return this.f10264a.getContentUri();
        }

        @Override // m0.f.c
        public final void d() {
            this.f10264a.requestPermission();
        }

        @Override // m0.f.c
        public final Uri e() {
            return this.f10264a.getLinkUri();
        }

        public a(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.f10264a = new InputContentInfo(uri, clipDescription, uri2);
        }
    }

    public f(c cVar) {
        this.f10263a = cVar;
    }
}
