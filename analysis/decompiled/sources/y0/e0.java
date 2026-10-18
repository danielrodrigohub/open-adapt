package y0;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: compiled from: RoomOpenHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class e0 extends d1.d.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public n f18186b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a f18187c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f18188d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f18189e;

    /* JADX INFO: compiled from: RoomOpenHelper.java */
    public static abstract class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f18190a;

        public a(int i10) {
            this.f18190a = i10;
        }

        public abstract void a(d1.b bVar);

        public abstract void b(d1.b bVar);

        public abstract void c();

        public abstract void d(d1.b bVar);

        public abstract void e();

        public abstract void f(d1.b bVar);

        public abstract b g(d1.b bVar);
    }

    /* JADX INFO: compiled from: RoomOpenHelper.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f18191a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f18192b;

        public b(boolean z10, String str) {
            this.f18191a = z10;
            this.f18192b = str;
        }
    }

    public e0(n nVar, a aVar, String str, String str2) {
        super(aVar.f18190a);
        this.f18186b = nVar;
        this.f18187c = aVar;
        this.f18188d = str;
        this.f18189e = str2;
    }

    @Override // d1.d.a
    public final void b() {
    }

    @Override // d1.d.a
    public final void c(d1.b bVar) {
        e1.a aVar = (e1.a) bVar;
        Cursor cursorB0 = aVar.b0("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
        try {
            boolean z10 = false;
            if (cursorB0.moveToFirst() && cursorB0.getInt(0) == 0) {
                z10 = true;
            }
            cursorB0.close();
            this.f18187c.a(aVar);
            if (!z10) {
                b bVarG = this.f18187c.g(aVar);
                if (!bVarG.f18191a) {
                    StringBuilder sbC = a0.b.c("Pre-packaged database has an invalid schema: ");
                    sbC.append(bVarG.f18192b);
                    throw new IllegalStateException(sbC.toString());
                }
            }
            g(aVar);
            this.f18187c.c();
        } catch (Throwable th) {
            cursorB0.close();
            throw th;
        }
    }

    @Override // d1.d.a
    public final void d(d1.b bVar, int i10, int i11) {
        f(bVar, i10, i11);
    }

    @Override // d1.d.a
    public final void e(d1.b bVar) {
        e1.a aVar = (e1.a) bVar;
        Cursor cursorB0 = aVar.b0("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'");
        try {
            boolean z10 = cursorB0.moveToFirst() && cursorB0.getInt(0) != 0;
            cursorB0.close();
            if (z10) {
                Cursor cursorM = aVar.M(new d1.a("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"));
                try {
                    String string = cursorM.moveToFirst() ? cursorM.getString(0) : null;
                    cursorM.close();
                    if (!this.f18188d.equals(string) && !this.f18189e.equals(string)) {
                        throw new IllegalStateException("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number.");
                    }
                } catch (Throwable th) {
                    cursorM.close();
                    throw th;
                }
            } else {
                b bVarG = this.f18187c.g(aVar);
                if (!bVarG.f18191a) {
                    StringBuilder sbC = a0.b.c("Pre-packaged database has an invalid schema: ");
                    sbC.append(bVarG.f18192b);
                    throw new IllegalStateException(sbC.toString());
                }
                this.f18187c.e();
                g(aVar);
            }
            this.f18187c.d(aVar);
            this.f18186b = null;
        } catch (Throwable th2) {
            cursorB0.close();
            throw th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0025  */
    /* JADX WARN: Code duplicated, block: B:18:0x0035 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:19:0x0037  */
    /* JADX WARN: Code duplicated, block: B:20:0x003c  */
    /* JADX WARN: Code duplicated, block: B:24:0x004a  */
    /* JADX WARN: Code duplicated, block: B:49:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:60:0x0077 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x0077 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:? A[LOOP:1: B:11:0x001e->B:66:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:0x0064 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:0x0074 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:? A[LOOP:2: B:22:0x0044->B:71:?, LOOP_END, SYNTHETIC] */
    @Override // d1.d.a
    public final void f(d1.b bVar, int i10, int i11) {
        List listEmptyList;
        TreeMap<Integer, z0.b> treeMap;
        Set<Integer> setKeySet;
        Iterator<Integer> it;
        boolean z10;
        int iIntValue;
        n nVar = this.f18186b;
        boolean z11 = true;
        if (nVar != null) {
            d0.c cVar = nVar.f18259d;
            Objects.requireNonNull(cVar);
            if (i10 == i11) {
                listEmptyList = Collections.emptyList();
            } else {
                boolean z12 = i11 > i10;
                ArrayList arrayList = new ArrayList();
                int i12 = i10;
                while (true) {
                    if (z12) {
                        if (i12 < i11) {
                            treeMap = cVar.f18180a.get(Integer.valueOf(i12));
                            if (treeMap != null) {
                                if (z12) {
                                    setKeySet = treeMap.descendingKeySet();
                                } else {
                                    setKeySet = treeMap.keySet();
                                }
                                it = setKeySet.iterator();
                                while (true) {
                                    if (it.hasNext()) {
                                        z10 = false;
                                        break;
                                    }
                                    iIntValue = it.next().intValue();
                                    if (z12 ? !(iIntValue < i11 || iIntValue >= i12) : !(iIntValue > i11 || iIntValue <= i12)) {
                                        arrayList.add(treeMap.get(Integer.valueOf(iIntValue)));
                                        z10 = true;
                                        i12 = iIntValue;
                                        break;
                                    }
                                }
                                if (!z10) {
                                }
                            }
                            listEmptyList = null;
                        } else {
                            listEmptyList = arrayList;
                        }
                    } else if (i12 > i11) {
                        treeMap = cVar.f18180a.get(Integer.valueOf(i12));
                        if (treeMap != null) {
                            if (z12) {
                                setKeySet = treeMap.descendingKeySet();
                            } else {
                                setKeySet = treeMap.keySet();
                            }
                            it = setKeySet.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    z10 = false;
                                    break;
                                    break;
                                }
                                iIntValue = it.next().intValue();
                                if (z12 ? !(iIntValue < i11 || iIntValue >= i12) : !(iIntValue > i11 || iIntValue <= i12)) {
                                    arrayList.add(treeMap.get(Integer.valueOf(iIntValue)));
                                    z10 = true;
                                    i12 = iIntValue;
                                    break;
                                    break;
                                }
                            }
                            if (!z10) {
                            }
                        }
                        listEmptyList = null;
                    } else {
                        listEmptyList = arrayList;
                    }
                }
            }
            if (listEmptyList != null) {
                this.f18187c.f(bVar);
                Iterator it2 = listEmptyList.iterator();
                while (it2.hasNext()) {
                    ((z0.b) it2.next()).a(bVar);
                }
                b bVarG = this.f18187c.g(bVar);
                if (!bVarG.f18191a) {
                    StringBuilder sbC = a0.b.c("Migration didn't properly handle: ");
                    sbC.append(bVarG.f18192b);
                    throw new IllegalStateException(sbC.toString());
                }
                this.f18187c.e();
                g(bVar);
            } else {
                z11 = false;
            }
        } else {
            z11 = false;
        }
        if (z11) {
            return;
        }
        n nVar2 = this.f18186b;
        if (nVar2 != null && !nVar2.a(i10, i11)) {
            this.f18187c.b(bVar);
            this.f18187c.a(bVar);
            return;
        }
        throw new IllegalStateException("A migration from " + i10 + " to " + i11 + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods.");
    }

    public final void g(d1.b bVar) {
        e1.a aVar = (e1.a) bVar;
        aVar.k("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        aVar.k("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '" + this.f18188d + "')");
    }
}
