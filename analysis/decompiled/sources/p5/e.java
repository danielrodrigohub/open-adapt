package p5;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;

/* JADX INFO: compiled from: ImageMatrixProperty.java */
/* JADX INFO: loaded from: classes.dex */
public final class e extends Property<ImageView, Matrix> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Matrix f13260a;

    public e() {
        super(Matrix.class, "imageMatrixProperty");
        this.f13260a = new Matrix();
    }

    @Override // android.util.Property
    public final Matrix get(ImageView imageView) {
        this.f13260a.set(imageView.getImageMatrix());
        return this.f13260a;
    }

    @Override // android.util.Property
    public final void set(ImageView imageView, Matrix matrix) {
        imageView.setImageMatrix(matrix);
    }
}
