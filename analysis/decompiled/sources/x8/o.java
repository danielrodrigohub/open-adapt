package x8;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.RenderEffect;
import android.graphics.Shader;
import android.os.Build;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.view.View;

/* JADX INFO: compiled from: BlurImageHelper.kt */
/* JADX INFO: loaded from: classes.dex */
public final class o implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Activity f17943h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f17944i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ jd.d<Bitmap> f17945j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ int f17946k = 2;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ View f17947l;

    public o(Activity activity, int i10, jd.d dVar, View view) {
        this.f17943h = activity;
        this.f17944i = i10;
        this.f17945j = dVar;
        this.f17947l = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Bitmap bitmapCreateBitmap;
        fd.o oVar;
        View viewFindViewById = this.f17943h.findViewById(this.f17944i);
        p4.h.i(viewFindViewById, "activity.findViewById<View>(containerId)");
        if (viewFindViewById.getWidth() <= 0 || viewFindViewById.getHeight() <= 0) {
            bitmapCreateBitmap = null;
        } else {
            bitmapCreateBitmap = Bitmap.createBitmap(viewFindViewById.getWidth(), viewFindViewById.getHeight(), Bitmap.Config.ARGB_8888);
            viewFindViewById.draw(new Canvas(bitmapCreateBitmap));
        }
        if (bitmapCreateBitmap != null) {
            int i10 = this.f17946k;
            View view = this.f17947l;
            jd.d<Bitmap> dVar = this.f17945j;
            Activity activity = this.f17943h;
            Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapCreateBitmap, bitmapCreateBitmap.getWidth() / i10, bitmapCreateBitmap.getHeight() / i10, true);
            if (Build.VERSION.SDK_INT >= 31) {
                view.setRenderEffect(RenderEffect.createBlurEffect(25.0f, 25.0f, Shader.TileMode.CLAMP));
                dVar.resumeWith(null);
            } else {
                Bitmap bitmapCreateScaledBitmap2 = Bitmap.createScaledBitmap(bitmapCreateScaledBitmap, bitmapCreateScaledBitmap.getWidth(), bitmapCreateScaledBitmap.getHeight(), false);
                RenderScript renderScriptCreate = RenderScript.create(activity);
                ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
                Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateScaledBitmap);
                Allocation allocationCreateFromBitmap2 = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateScaledBitmap2);
                scriptIntrinsicBlurCreate.setRadius(25.0f);
                scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
                scriptIntrinsicBlurCreate.forEach(allocationCreateFromBitmap2);
                allocationCreateFromBitmap2.copyTo(bitmapCreateScaledBitmap2);
                bitmapCreateScaledBitmap.recycle();
                bitmapCreateBitmap.recycle();
                renderScriptCreate.destroy();
                dVar.resumeWith(bitmapCreateScaledBitmap2);
            }
            oVar = fd.o.f7408a;
        } else {
            oVar = null;
        }
        if (oVar == null) {
            this.f17945j.resumeWith(null);
        }
    }
}
