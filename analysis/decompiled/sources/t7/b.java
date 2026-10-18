package t7;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import androidx.lifecycle.o;
import fd.d;
import fd.h;
import h3.g;

/* JADX INFO: compiled from: GlideImageLoader.kt */
/* JADX INFO: loaded from: classes.dex */
public interface b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f15557a = a.f15558a;

    /* JADX INFO: compiled from: GlideImageLoader.kt */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ a f15558a = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final d<t7.a> f15559b = (h) o.x(C0265a.f15560h);

        /* JADX INFO: renamed from: t7.b$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: GlideImageLoader.kt */
        public static final class C0265a extends rd.o implements qd.a<t7.a> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public static final C0265a f15560h = new C0265a();

            public C0265a() {
                super(0);
            }

            @Override // qd.a
            public final t7.a invoke() {
                return new t7.a();
            }
        }

        public final b a() {
            return f15559b.getValue();
        }
    }

    void a(Object obj, String str);

    void b(String str, Object obj, View view, Drawable drawable, qd.a<fd.o> aVar);

    void c(Object obj, String str, ImageView imageView, int i10);

    void d(String str, g gVar, ImageView imageView);

    void e(View view);
}
