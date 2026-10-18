package n0;

import android.widget.ListView;

/* JADX INFO: compiled from: ListViewCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class h {
    public static boolean a(ListView listView, int i10) {
        return listView.canScrollList(i10);
    }

    public static void b(ListView listView, int i10) {
        listView.scrollListBy(i10);
    }
}
