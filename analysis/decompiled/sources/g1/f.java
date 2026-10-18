package g1;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Picture;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;

/* JADX INFO: compiled from: TransitionUtils.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f7540a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final boolean f7541b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final boolean f7542c;

    static {
        int i10 = Build.VERSION.SDK_INT;
        f7540a = true;
        f7541b = true;
        f7542c = i10 >= 28;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0100  */
    public static View a(ViewGroup viewGroup, View view, View view2) {
        boolean z10;
        boolean zIsAttachedToWindow;
        int iIndexOfChild;
        ViewGroup viewGroup2;
        Matrix matrix = new Matrix();
        matrix.setTranslate(-view2.getScrollX(), -view2.getScrollY());
        p pVar = l.f7553a;
        pVar.d(view, matrix);
        pVar.e(viewGroup, matrix);
        RectF rectF = new RectF(0.0f, 0.0f, view.getWidth(), view.getHeight());
        matrix.mapRect(rectF);
        int iRound = Math.round(rectF.left);
        int iRound2 = Math.round(rectF.top);
        int iRound3 = Math.round(rectF.right);
        int iRound4 = Math.round(rectF.bottom);
        ImageView imageView = new ImageView(view.getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        if (f7540a) {
            z10 = !view.isAttachedToWindow();
            zIsAttachedToWindow = viewGroup.isAttachedToWindow();
        } else {
            z10 = false;
            zIsAttachedToWindow = false;
        }
        boolean z11 = f7541b;
        Bitmap bitmapCreateBitmap = null;
        if (z11 && z10) {
            if (zIsAttachedToWindow) {
                viewGroup2 = (ViewGroup) view.getParent();
                iIndexOfChild = viewGroup2.indexOfChild(view);
                viewGroup.getOverlay().add(view);
            }
            if (bitmapCreateBitmap != null) {
                imageView.setImageBitmap(bitmapCreateBitmap);
            }
            imageView.measure(View.MeasureSpec.makeMeasureSpec(iRound3 - iRound, 1073741824), View.MeasureSpec.makeMeasureSpec(iRound4 - iRound2, 1073741824));
            imageView.layout(iRound, iRound2, iRound3, iRound4);
            return imageView;
        }
        iIndexOfChild = 0;
        viewGroup2 = null;
        int iRound5 = Math.round(rectF.width());
        int iRound6 = Math.round(rectF.height());
        if (iRound5 > 0 && iRound6 > 0) {
            float fMin = Math.min(1.0f, 1048576.0f / (iRound5 * iRound6));
            int iRound7 = Math.round(iRound5 * fMin);
            int iRound8 = Math.round(iRound6 * fMin);
            matrix.postTranslate(-rectF.left, -rectF.top);
            matrix.postScale(fMin, fMin);
            if (f7542c) {
                Picture picture = new Picture();
                Canvas canvasBeginRecording = picture.beginRecording(iRound7, iRound8);
                canvasBeginRecording.concat(matrix);
                view.draw(canvasBeginRecording);
                picture.endRecording();
                bitmapCreateBitmap = Bitmap.createBitmap(picture);
            } else {
                Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(iRound7, iRound8, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmapCreateBitmap2);
                canvas.concat(matrix);
                view.draw(canvas);
                bitmapCreateBitmap = bitmapCreateBitmap2;
            }
        }
        if (z11 && z10) {
            viewGroup.getOverlay().remove(view);
            viewGroup2.addView(view, iIndexOfChild);
        }
        if (bitmapCreateBitmap != null) {
            imageView.setImageBitmap(bitmapCreateBitmap);
        }
        imageView.measure(View.MeasureSpec.makeMeasureSpec(iRound3 - iRound, 1073741824), View.MeasureSpec.makeMeasureSpec(iRound4 - iRound2, 1073741824));
        imageView.layout(iRound, iRound2, iRound3, iRound4);
        return imageView;
    }
}
