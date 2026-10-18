package o0;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import androidx.appcompat.widget.e0;

/* JADX INFO: compiled from: CursorAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a extends BaseAdapter implements Filterable, o0.b.a {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Context f12053k;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public o0.b f12057o;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f12051i = true;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Cursor f12052j = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f12050h = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f12054l = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public C0218a f12055m = new C0218a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public b f12056n = new b();

    /* JADX INFO: renamed from: o0.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CursorAdapter.java */
    public class C0218a extends ContentObserver {
        public C0218a() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public final boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z10) {
            Cursor cursor;
            a aVar = a.this;
            if (!aVar.f12051i || (cursor = aVar.f12052j) == null || cursor.isClosed()) {
                return;
            }
            aVar.f12050h = aVar.f12052j.requery();
        }
    }

    /* JADX INFO: compiled from: CursorAdapter.java */
    public class b extends DataSetObserver {
        public b() {
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            a aVar = a.this;
            aVar.f12050h = true;
            aVar.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            a aVar = a.this;
            aVar.f12050h = false;
            aVar.notifyDataSetInvalidated();
        }
    }

    public a(Context context) {
        this.f12053k = context;
    }

    public abstract void b(View view, Cursor cursor);

    public void c(Cursor cursor) {
        Cursor cursor2 = this.f12052j;
        if (cursor == cursor2) {
            cursor2 = null;
        } else {
            if (cursor2 != null) {
                C0218a c0218a = this.f12055m;
                if (c0218a != null) {
                    cursor2.unregisterContentObserver(c0218a);
                }
                b bVar = this.f12056n;
                if (bVar != null) {
                    cursor2.unregisterDataSetObserver(bVar);
                }
            }
            this.f12052j = cursor;
            if (cursor != null) {
                C0218a c0218a2 = this.f12055m;
                if (c0218a2 != null) {
                    cursor.registerContentObserver(c0218a2);
                }
                b bVar2 = this.f12056n;
                if (bVar2 != null) {
                    cursor.registerDataSetObserver(bVar2);
                }
                this.f12054l = cursor.getColumnIndexOrThrow("_id");
                this.f12050h = true;
                notifyDataSetChanged();
            } else {
                this.f12054l = -1;
                this.f12050h = false;
                notifyDataSetInvalidated();
            }
        }
        if (cursor2 != null) {
            cursor2.close();
        }
    }

    public abstract CharSequence d(Cursor cursor);

    public abstract View e(ViewGroup viewGroup);

    @Override // android.widget.Adapter
    public final int getCount() {
        Cursor cursor;
        if (!this.f12050h || (cursor = this.f12052j) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i10, View view, ViewGroup viewGroup) {
        if (!this.f12050h) {
            return null;
        }
        this.f12052j.moveToPosition(i10);
        if (view == null) {
            c cVar = (c) this;
            view = cVar.f12063r.inflate(cVar.f12062q, viewGroup, false);
        }
        b(view, this.f12052j);
        return view;
    }

    @Override // android.widget.Filterable
    public final Filter getFilter() {
        if (this.f12057o == null) {
            this.f12057o = new o0.b(this);
        }
        return this.f12057o;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i10) {
        Cursor cursor;
        if (!this.f12050h || (cursor = this.f12052j) == null) {
            return null;
        }
        cursor.moveToPosition(i10);
        return this.f12052j;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i10) {
        Cursor cursor;
        if (this.f12050h && (cursor = this.f12052j) != null && cursor.moveToPosition(i10)) {
            return this.f12052j.getLong(this.f12054l);
        }
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        if (!this.f12050h) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        }
        if (!this.f12052j.moveToPosition(i10)) {
            throw new IllegalStateException(e0.d("couldn't move cursor to position ", i10));
        }
        if (view == null) {
            view = e(viewGroup);
        }
        b(view, this.f12052j);
        return view;
    }
}
