package t7;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import com.bumptech.glide.j;
import com.nike.adapt.BigfootApplication;
import com.nike.adapt.R;
import fd.o;
import h3.g;
import i3.c;
import java.util.Objects;
import k3.d;
import o7.q;
import o7.r;
import o7.x;
import p4.h;
import r2.l;

/* JADX INFO: compiled from: GlideImageLoader.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a implements b {

    /* JADX INFO: renamed from: t7.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: GlideImageLoader.kt */
    public static final class C0264a extends c<Drawable> {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final /* synthetic */ String f15554k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final /* synthetic */ View f15555l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final /* synthetic */ Drawable f15556m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0264a(String str, View view, Drawable drawable) {
            super(Integer.MIN_VALUE, Integer.MIN_VALUE);
            this.f15554k = str;
            this.f15555l = view;
            this.f15556m = drawable;
        }

        @Override // i3.c, i3.i
        public final void a(Drawable drawable) {
            x.f12420a.b("Glide", "onLoadFailed");
            this.f15555l.setBackground(this.f15556m);
        }

        @Override // i3.i
        public final void f(Drawable drawable) {
            x.f12420a.b("Glide", "onLoadCleared");
        }

        @Override // i3.i
        public final void j(Object obj) {
            x.f12420a.b("Glide image url", "onResourceReady : " + this.f15554k);
            this.f15555l.setBackground((Drawable) obj);
        }
    }

    @Override // t7.b
    public final void a(Object obj, String str) {
        h.j(obj, "cacheSignature");
        h.j(str, "url");
        g gVarV = new g().e(l.f14304c).v(new d(obj));
        h.i(gVarV, "RequestOptions()\n       …bjectKey(cacheSignature))");
        q<Drawable> qVarA = g7.b.k(BigfootApplication.f5638p.a()).u(str).a(gVarV);
        qVarA.H(new i3.g(qVarA.I), qVarA);
        a1.d.d("Glide has image cached with this url : ", str, x.f12420a);
    }

    @Override // t7.b
    public final void b(String str, Object obj, View view, Drawable drawable, qd.a<o> aVar) {
        h.j(str, "url");
        h.j(obj, "cacheSignature");
        h.j(aVar, "loadImage");
        g gVarV = new g().e(l.f14304c).v(new d(obj));
        h.i(gVarV, "RequestOptions()\n       …bjectKey(cacheSignature))");
        g gVar = gVarV;
        try {
            q<Drawable> qVarU = g7.b.k(view.getContext()).u(str);
            qVarU.a(gVar);
            qVarU.j(drawable);
            qVarU.h(drawable);
            qVarU.H(new C0264a(str, view, drawable), qVarU);
        } catch (Throwable th) {
            x xVar = x.f12420a;
            String localizedMessage = th.getLocalizedMessage();
            if (localizedMessage == null) {
                localizedMessage = "no error message";
            }
            xVar.a(localizedMessage);
            view.setBackground(drawable);
        }
    }

    @Override // t7.b
    public final void c(Object obj, String str, ImageView imageView, int i10) {
        h.j(obj, "cacheSignature");
        h.j(str, "url");
        h.j(imageView, "view");
        g gVarV = new g().e(l.f14304c).v(new d(obj));
        h.i(gVarV, "RequestOptions()\n       …bjectKey(cacheSignature))");
        g gVar = gVarV;
        try {
            q<Drawable> qVarU = g7.b.k(imageView.getContext()).u(str);
            qVarU.a(gVar);
            qVarU.i(i10);
            qVarU.g(i10);
            qVarU.I(imageView);
        } catch (Throwable th) {
            a1.d.d("Glide exception : ", th.getMessage(), x.f12420a);
        }
    }

    @Override // t7.b
    public final void d(String str, g gVar, ImageView imageView) {
        g7.b.k(imageView.getContext()).u(str).g(R.drawable.bigfoot_ic_default_avatar).a(g.C()).I(imageView);
    }

    @Override // t7.b
    public final void e(View view) {
        h.j(view, "view");
        r rVarK = g7.b.k(view.getContext());
        Objects.requireNonNull(rVarK);
        rVarK.o(new j.b(view));
    }
}
