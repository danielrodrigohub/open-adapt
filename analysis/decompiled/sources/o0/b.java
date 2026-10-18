package o0;

import android.database.Cursor;
import android.util.Log;
import android.widget.Filter;
import androidx.appcompat.widget.z0;
import java.util.Objects;

/* JADX INFO: compiled from: CursorFilter.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends Filter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public a f12060a;

    /* JADX INFO: compiled from: CursorFilter.java */
    public interface a {
    }

    public b(a aVar) {
        this.f12060a = aVar;
    }

    @Override // android.widget.Filter
    public final CharSequence convertResultToString(Object obj) {
        return ((z0) this.f12060a).d((Cursor) obj);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0036  */
    @Override // android.widget.Filter
    public final Filter.FilterResults performFiltering(CharSequence charSequence) {
        Cursor cursorH;
        z0 z0Var = (z0) this.f12060a;
        Objects.requireNonNull(z0Var);
        String string = charSequence == null ? "" : charSequence.toString();
        if (z0Var.f1484s.getVisibility() == 0 && z0Var.f1484s.getWindowVisibility() == 0) {
            try {
                cursorH = z0Var.h(z0Var.f1485t, string);
                if (cursorH != null) {
                    cursorH.getCount();
                } else {
                    cursorH = null;
                }
            } catch (RuntimeException e10) {
                Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", e10);
            }
        } else {
            cursorH = null;
        }
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (cursorH != null) {
            filterResults.count = cursorH.getCount();
            filterResults.values = cursorH;
        } else {
            filterResults.count = 0;
            filterResults.values = null;
        }
        return filterResults;
    }

    @Override // android.widget.Filter
    public final void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        a aVar = this.f12060a;
        Cursor cursor = ((o0.a) aVar).f12052j;
        Object obj = filterResults.values;
        if (obj == null || obj == cursor) {
            return;
        }
        ((z0) aVar).c((Cursor) obj);
    }
}
