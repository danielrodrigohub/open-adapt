package r0;

import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;

/* JADX INFO: compiled from: EmojiTextViewHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f14187a;

    /* JADX INFO: compiled from: EmojiTextViewHelper.java */
    public static class a extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TextView f14188a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final d f14189b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f14190c = true;

        public a(TextView textView) {
            this.f14188a = textView;
            this.f14189b = new d(textView);
        }

        @Override // r0.f.b
        public final InputFilter[] a(InputFilter[] inputFilterArr) {
            if (this.f14190c) {
                int length = inputFilterArr.length;
                for (InputFilter inputFilter : inputFilterArr) {
                    if (inputFilter == this.f14189b) {
                        return inputFilterArr;
                    }
                }
                InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length + 1];
                System.arraycopy(inputFilterArr, 0, inputFilterArr2, 0, length);
                inputFilterArr2[length] = this.f14189b;
                return inputFilterArr2;
            }
            SparseArray sparseArray = new SparseArray(1);
            for (int i10 = 0; i10 < inputFilterArr.length; i10++) {
                if (inputFilterArr[i10] instanceof d) {
                    sparseArray.put(i10, inputFilterArr[i10]);
                }
            }
            if (sparseArray.size() == 0) {
                return inputFilterArr;
            }
            int length2 = inputFilterArr.length;
            InputFilter[] inputFilterArr3 = new InputFilter[inputFilterArr.length - sparseArray.size()];
            int i11 = 0;
            for (int i12 = 0; i12 < length2; i12++) {
                if (sparseArray.indexOfKey(i12) < 0) {
                    inputFilterArr3[i11] = inputFilterArr[i12];
                    i11++;
                }
            }
            return inputFilterArr3;
        }

        @Override // r0.f.b
        public final boolean b() {
            return this.f14190c;
        }

        @Override // r0.f.b
        public final void c(boolean z10) {
            if (z10) {
                this.f14188a.setTransformationMethod(e(this.f14188a.getTransformationMethod()));
            }
        }

        @Override // r0.f.b
        public final void d(boolean z10) {
            this.f14190c = z10;
            this.f14188a.setTransformationMethod(e(this.f14188a.getTransformationMethod()));
            this.f14188a.setFilters(a(this.f14188a.getFilters()));
        }

        @Override // r0.f.b
        public final TransformationMethod e(TransformationMethod transformationMethod) {
            if (this.f14190c) {
                return ((transformationMethod instanceof h) || (transformationMethod instanceof PasswordTransformationMethod)) ? transformationMethod : new h(transformationMethod);
            }
            return transformationMethod instanceof h ? ((h) transformationMethod).f14196h : transformationMethod;
        }
    }

    /* JADX INFO: compiled from: EmojiTextViewHelper.java */
    public static class b {
        public InputFilter[] a(InputFilter[] inputFilterArr) {
            throw null;
        }

        public boolean b() {
            throw null;
        }

        public void c(boolean z10) {
            throw null;
        }

        public void d(boolean z10) {
            throw null;
        }

        public TransformationMethod e(TransformationMethod transformationMethod) {
            throw null;
        }
    }

    /* JADX INFO: compiled from: EmojiTextViewHelper.java */
    public static class c extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final a f14191a;

        public c(TextView textView) {
            this.f14191a = new a(textView);
        }

        @Override // r0.f.b
        public final InputFilter[] a(InputFilter[] inputFilterArr) {
            Object obj = androidx.emoji2.text.a.f1800a;
            return inputFilterArr;
        }

        @Override // r0.f.b
        public final boolean b() {
            return this.f14191a.f14190c;
        }

        @Override // r0.f.b
        public final void c(boolean z10) {
            Object obj = androidx.emoji2.text.a.f1800a;
        }

        @Override // r0.f.b
        public final void d(boolean z10) {
            Object obj = androidx.emoji2.text.a.f1800a;
            this.f14191a.f14190c = z10;
        }

        @Override // r0.f.b
        public final TransformationMethod e(TransformationMethod transformationMethod) {
            Object obj = androidx.emoji2.text.a.f1800a;
            return transformationMethod;
        }
    }

    public f(TextView textView) {
        c3.d.h(textView, "textView cannot be null");
        this.f14187a = new c(textView);
    }
}
