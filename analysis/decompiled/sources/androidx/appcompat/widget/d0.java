package androidx.appcompat.widget;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import java.util.Objects;

/* JADX INFO: compiled from: AppCompatTextClassifierHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public TextView f1220a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TextClassifier f1221b;

    /* JADX INFO: compiled from: AppCompatTextClassifierHelper.java */
    public static final class a {
        public static TextClassifier a(TextView textView) {
            TextClassificationManager textClassificationManager = (TextClassificationManager) textView.getContext().getSystemService(TextClassificationManager.class);
            return textClassificationManager != null ? textClassificationManager.getTextClassifier() : TextClassifier.NO_OP;
        }
    }

    public d0(TextView textView) {
        Objects.requireNonNull(textView);
        this.f1220a = textView;
    }
}
