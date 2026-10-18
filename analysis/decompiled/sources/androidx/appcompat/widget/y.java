package androidx.appcompat.widget;

import android.app.Activity;
import android.content.ClipData;
import android.os.Build;
import android.text.Selection;
import android.text.Spannable;
import android.view.DragEvent;
import android.view.View;
import android.widget.TextView;

/* JADX INFO: compiled from: AppCompatReceiveContentHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class y {
    public static boolean a(DragEvent dragEvent, TextView textView, Activity activity) {
        activity.requestDragAndDropPermissions(dragEvent);
        int offsetForPosition = textView.getOffsetForPosition(dragEvent.getX(), dragEvent.getY());
        textView.beginBatchEdit();
        try {
            Selection.setSelection((Spannable) textView.getText(), offsetForPosition);
            ClipData clipData = dragEvent.getClipData();
            j0.a0.l(textView, (Build.VERSION.SDK_INT >= 31 ? new j0.c.a(clipData, 3) : new j0.c.C0179c(clipData, 3)).a());
            return true;
        } finally {
            textView.endBatchEdit();
        }
    }

    public static boolean b(DragEvent dragEvent, View view, Activity activity) {
        activity.requestDragAndDropPermissions(dragEvent);
        ClipData clipData = dragEvent.getClipData();
        j0.a0.l(view, (Build.VERSION.SDK_INT >= 31 ? new j0.c.a(clipData, 3) : new j0.c.C0179c(clipData, 3)).a());
        return true;
    }
}
