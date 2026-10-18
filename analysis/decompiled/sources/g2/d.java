package g2;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import b2.r;
import com.newrelic.agent.android.instrumentation.BitmapFactoryInstrumentation;
import java.io.IOException;
import y1.e0;
import y1.f0;
import y1.i0;

/* JADX INFO: compiled from: ImageLayer.java */
/* JADX INFO: loaded from: classes.dex */
public final class d extends b {
    public final z1.a D;
    public final Rect E;
    public final Rect F;
    public final f0 G;
    public b2.a<ColorFilter, ColorFilter> H;
    public b2.a<Bitmap, Bitmap> I;

    public d(e0 e0Var, f fVar) {
        super(e0Var, fVar);
        this.D = new z1.a(3);
        this.E = new Rect();
        this.F = new Rect();
        String str = fVar.f7594g;
        y1.i iVar = e0Var.f18305h;
        this.G = iVar == null ? null : iVar.f18335d.get(str);
    }

    @Override // g2.b, a2.d
    public final void b(RectF rectF, Matrix matrix, boolean z10) {
        super.b(rectF, matrix, z10);
        if (this.G != null) {
            float fC = k2.g.c();
            f0 f0Var = this.G;
            rectF.set(0.0f, 0.0f, f0Var.f18326a * fC, f0Var.f18327b * fC);
            this.f7576o.mapRect(rectF);
        }
    }

    @Override // g2.b, d2.f
    public final <T> void g(T t10, l2.c<T> cVar) {
        super.g(t10, cVar);
        if (t10 == i0.K) {
            if (cVar == null) {
                this.H = null;
                return;
            } else {
                this.H = new r(cVar, null);
                return;
            }
        }
        if (t10 == i0.N) {
            if (cVar == null) {
                this.I = null;
            } else {
                this.I = new r(cVar, null);
            }
        }
    }

    @Override // g2.b
    public final void l(Canvas canvas, Matrix matrix, int i10) {
        c2.b bVar;
        Bitmap bitmapF;
        f0 f0Var;
        Bitmap bitmapE;
        b2.a<Bitmap, Bitmap> aVar = this.I;
        if (aVar == null || (bitmapF = aVar.f()) == null) {
            String str = this.f7578q.f7594g;
            e0 e0Var = this.f7577p;
            if (e0Var.getCallback() == null) {
                bVar = null;
            } else {
                c2.b bVar2 = e0Var.f18313p;
                if (bVar2 != null) {
                    Drawable.Callback callback = e0Var.getCallback();
                    Context context = (callback != null && (callback instanceof View)) ? ((View) callback).getContext() : null;
                    if (!((context == null && bVar2.f3821a == null) || bVar2.f3821a.equals(context))) {
                        e0Var.f18313p = null;
                    }
                }
                if (e0Var.f18313p == null) {
                    e0Var.f18313p = new c2.b(e0Var.getCallback(), e0Var.f18314q, e0Var.f18315r, e0Var.f18305h.f18335d);
                }
                bVar = e0Var.f18313p;
            }
            if (bVar == null || (f0Var = bVar.f3824d.get(str)) == null) {
                bitmapF = null;
            } else {
                Bitmap bitmap = f0Var.f18329d;
                if (bitmap != null) {
                    bitmapF = bitmap;
                } else {
                    y1.b bVar3 = bVar.f3823c;
                    if (bVar3 != null) {
                        bitmapE = bVar3.a();
                        if (bitmapE != null) {
                            bVar.a(str, bitmapE);
                        }
                    } else {
                        String str2 = f0Var.f18328c;
                        BitmapFactory.Options options = new BitmapFactory.Options();
                        options.inScaled = true;
                        options.inDensity = 160;
                        if (!str2.startsWith("data:") || str2.indexOf("base64,") <= 0) {
                            try {
                                if (TextUtils.isEmpty(bVar.f3822b)) {
                                    throw new IllegalStateException("You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder");
                                }
                                try {
                                    bitmapE = k2.g.e(BitmapFactoryInstrumentation.decodeStream(bVar.f3821a.getAssets().open(bVar.f3822b + str2), null, options), f0Var.f18326a, f0Var.f18327b);
                                    bVar.a(str, bitmapE);
                                } catch (IllegalArgumentException e10) {
                                    k2.c.c("Unable to decode image.", e10);
                                    bitmapF = null;
                                }
                            } catch (IOException e11) {
                                k2.c.c("Unable to open asset.", e11);
                            }
                        } else {
                            try {
                                byte[] bArrDecode = Base64.decode(str2.substring(str2.indexOf(44) + 1), 0);
                                bitmapE = BitmapFactoryInstrumentation.decodeByteArray(bArrDecode, 0, bArrDecode.length, options);
                                bVar.a(str, bitmapE);
                            } catch (IllegalArgumentException e12) {
                                k2.c.c("data URL did not have correct base64 format.", e12);
                                bitmapF = null;
                            }
                        }
                    }
                    bitmapF = bitmapE;
                }
            }
            if (bitmapF == null) {
                f0 f0Var2 = this.G;
                bitmapF = f0Var2 != null ? f0Var2.f18329d : null;
            }
        }
        if (bitmapF == null || bitmapF.isRecycled() || this.G == null) {
            return;
        }
        float fC = k2.g.c();
        this.D.setAlpha(i10);
        b2.a<ColorFilter, ColorFilter> aVar2 = this.H;
        if (aVar2 != null) {
            this.D.setColorFilter(aVar2.f());
        }
        canvas.save();
        canvas.concat(matrix);
        this.E.set(0, 0, bitmapF.getWidth(), bitmapF.getHeight());
        if (this.f7577p.f18318u) {
            Rect rect = this.F;
            f0 f0Var3 = this.G;
            rect.set(0, 0, (int) (f0Var3.f18326a * fC), (int) (f0Var3.f18327b * fC));
        } else {
            this.F.set(0, 0, (int) (bitmapF.getWidth() * fC), (int) (bitmapF.getHeight() * fC));
        }
        canvas.drawBitmap(bitmapF, this.E, this.F, this.D);
        canvas.restore();
    }
}
