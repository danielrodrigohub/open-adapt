package a1;

import android.database.Cursor;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: compiled from: TableInfo.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f37a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map<String, a> f38b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set<b> f39c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Set<d> f40d;

    /* JADX INFO: compiled from: TableInfo.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f41a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f42b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f43c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f44d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f45e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f46f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f47g;

        public a(String str, String str2, boolean z10, int i10, String str3, int i11) {
            this.f41a = str;
            this.f42b = str2;
            this.f44d = z10;
            this.f45e = i10;
            int i12 = 5;
            if (str2 != null) {
                String upperCase = str2.toUpperCase(Locale.US);
                if (upperCase.contains("INT")) {
                    i12 = 3;
                } else if (upperCase.contains("CHAR") || upperCase.contains("CLOB") || upperCase.contains("TEXT")) {
                    i12 = 2;
                } else if (!upperCase.contains("BLOB")) {
                    i12 = (upperCase.contains("REAL") || upperCase.contains("FLOA") || upperCase.contains("DOUB")) ? 4 : 1;
                }
            }
            this.f43c = i12;
            this.f46f = str3;
            this.f47g = i11;
        }

        public static boolean a(String str, String str2) {
            boolean z10;
            if (str2 == null) {
                return false;
            }
            if (str.equals(str2)) {
                return true;
            }
            if (str.length() != 0) {
                int i10 = 0;
                int i11 = 0;
                while (true) {
                    if (i10 >= str.length()) {
                        if (i11 == 0) {
                            z10 = true;
                            break;
                        }
                    } else {
                        char cCharAt = str.charAt(i10);
                        if (i10 != 0 || cCharAt == '(') {
                            if (cCharAt == '(') {
                                i11++;
                            } else if (cCharAt != ')' || (i11 = i11 - 1) != 0 || i10 == str.length() - 1) {
                            }
                            i10++;
                        }
                    }
                    z10 = false;
                    break;
                }
            }
            z10 = false;
            break;
            if (z10) {
                return str.substring(1, str.length() - 1).trim().equals(str2);
            }
            return false;
        }

        public final boolean equals(Object obj) {
            String str;
            String str2;
            String str3;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f45e != aVar.f45e || !this.f41a.equals(aVar.f41a) || this.f44d != aVar.f44d) {
                return false;
            }
            if (this.f47g == 1 && aVar.f47g == 2 && (str3 = this.f46f) != null && !a(str3, aVar.f46f)) {
                return false;
            }
            if (this.f47g == 2 && aVar.f47g == 1 && (str2 = aVar.f46f) != null && !a(str2, this.f46f)) {
                return false;
            }
            int i10 = this.f47g;
            return (i10 == 0 || i10 != aVar.f47g || ((str = this.f46f) == null ? aVar.f46f == null : a(str, aVar.f46f))) && this.f43c == aVar.f43c;
        }

        public final int hashCode() {
            return (((((this.f41a.hashCode() * 31) + this.f43c) * 31) + (this.f44d ? 1231 : 1237)) * 31) + this.f45e;
        }

        public final String toString() {
            StringBuilder sbC = a0.b.c("Column{name='");
            a1.d.f(sbC, this.f41a, '\'', ", type='");
            a1.d.f(sbC, this.f42b, '\'', ", affinity='");
            sbC.append(this.f43c);
            sbC.append('\'');
            sbC.append(", notNull=");
            sbC.append(this.f44d);
            sbC.append(", primaryKeyPosition=");
            sbC.append(this.f45e);
            sbC.append(", defaultValue='");
            sbC.append(this.f46f);
            sbC.append('\'');
            sbC.append('}');
            return sbC.toString();
        }
    }

    /* JADX INFO: compiled from: TableInfo.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f48a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f49b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f50c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final List<String> f51d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final List<String> f52e;

        public b(String str, String str2, String str3, List<String> list, List<String> list2) {
            this.f48a = str;
            this.f49b = str2;
            this.f50c = str3;
            this.f51d = Collections.unmodifiableList(list);
            this.f52e = Collections.unmodifiableList(list2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f48a.equals(bVar.f48a) && this.f49b.equals(bVar.f49b) && this.f50c.equals(bVar.f50c) && this.f51d.equals(bVar.f51d)) {
                return this.f52e.equals(bVar.f52e);
            }
            return false;
        }

        public final int hashCode() {
            return this.f52e.hashCode() + ((this.f51d.hashCode() + f.c(this.f50c, f.c(this.f49b, this.f48a.hashCode() * 31, 31), 31)) * 31);
        }

        public final String toString() {
            StringBuilder sbC = a0.b.c("ForeignKey{referenceTable='");
            a1.d.f(sbC, this.f48a, '\'', ", onDelete='");
            a1.d.f(sbC, this.f49b, '\'', ", onUpdate='");
            a1.d.f(sbC, this.f50c, '\'', ", columnNames=");
            sbC.append(this.f51d);
            sbC.append(", referenceColumnNames=");
            sbC.append(this.f52e);
            sbC.append('}');
            return sbC.toString();
        }
    }

    /* JADX INFO: compiled from: TableInfo.java */
    public static class c implements Comparable<c> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f53h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f54i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final String f55j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final String f56k;

        public c(int i10, int i11, String str, String str2) {
            this.f53h = i10;
            this.f54i = i11;
            this.f55j = str;
            this.f56k = str2;
        }

        @Override // java.lang.Comparable
        public final int compareTo(c cVar) {
            c cVar2 = cVar;
            int i10 = this.f53h - cVar2.f53h;
            return i10 == 0 ? this.f54i - cVar2.f54i : i10;
        }
    }

    /* JADX INFO: compiled from: TableInfo.java */
    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f57a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f58b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List<String> f59c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final List<String> f60d;

        public d(String str, boolean z10, List<String> list, List<String> list2) {
            this.f57a = str;
            this.f58b = z10;
            this.f59c = list;
            this.f60d = (list2 == null || list2.size() == 0) ? Collections.nCopies(list.size(), "ASC") : list2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            if (this.f58b == dVar.f58b && this.f59c.equals(dVar.f59c) && this.f60d.equals(dVar.f60d)) {
                return this.f57a.startsWith("index_") ? dVar.f57a.startsWith("index_") : this.f57a.equals(dVar.f57a);
            }
            return false;
        }

        public final int hashCode() {
            return this.f60d.hashCode() + ((this.f59c.hashCode() + ((((this.f57a.startsWith("index_") ? -1184239155 : this.f57a.hashCode()) * 31) + (this.f58b ? 1 : 0)) * 31)) * 31);
        }

        public final String toString() {
            StringBuilder sbC = a0.b.c("Index{name='");
            a1.d.f(sbC, this.f57a, '\'', ", unique=");
            sbC.append(this.f58b);
            sbC.append(", columns=");
            sbC.append(this.f59c);
            sbC.append(", orders=");
            sbC.append(this.f60d);
            sbC.append('}');
            return sbC.toString();
        }
    }

    public e(String str, Map<String, a> map, Set<b> set, Set<d> set2) {
        this.f37a = str;
        this.f38b = Collections.unmodifiableMap(map);
        this.f39c = Collections.unmodifiableSet(set);
        this.f40d = set2 == null ? null : Collections.unmodifiableSet(set2);
    }

    public static e a(d1.b bVar, String str) {
        List<c> list;
        int i10;
        e1.a aVar = (e1.a) bVar;
        Cursor cursorB0 = aVar.b0(a0.d.c("PRAGMA table_info(`", str, "`)"));
        HashMap map = new HashMap();
        try {
            if (cursorB0.getColumnCount() > 0) {
                int columnIndex = cursorB0.getColumnIndex("name");
                int columnIndex2 = cursorB0.getColumnIndex(AnalyticsAttribute.TYPE_ATTRIBUTE);
                int columnIndex3 = cursorB0.getColumnIndex("notnull");
                int columnIndex4 = cursorB0.getColumnIndex("pk");
                int columnIndex5 = cursorB0.getColumnIndex("dflt_value");
                while (cursorB0.moveToNext()) {
                    String string = cursorB0.getString(columnIndex);
                    int i11 = columnIndex;
                    map.put(string, new a(string, cursorB0.getString(columnIndex2), cursorB0.getInt(columnIndex3) != 0, cursorB0.getInt(columnIndex4), cursorB0.getString(columnIndex5), 2));
                    columnIndex = i11;
                }
            }
            cursorB0.close();
            HashSet hashSet = new HashSet();
            Cursor cursorB1 = aVar.b0("PRAGMA foreign_key_list(`" + str + "`)");
            try {
                int columnIndex6 = cursorB1.getColumnIndex("id");
                int columnIndex7 = cursorB1.getColumnIndex("seq");
                int columnIndex8 = cursorB1.getColumnIndex("table");
                int columnIndex9 = cursorB1.getColumnIndex("on_delete");
                int columnIndex10 = cursorB1.getColumnIndex("on_update");
                List<c> listB = b(cursorB1);
                int count = cursorB1.getCount();
                int i12 = 0;
                while (i12 < count) {
                    cursorB1.moveToPosition(i12);
                    if (cursorB1.getInt(columnIndex7) != 0) {
                        list = listB;
                        i10 = count;
                    } else {
                        int i13 = cursorB1.getInt(columnIndex6);
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = new ArrayList();
                        for (c cVar : (ArrayList) listB) {
                            List<c> list2 = listB;
                            int i14 = count;
                            if (cVar.f53h == i13) {
                                arrayList.add(cVar.f55j);
                                arrayList2.add(cVar.f56k);
                            }
                            listB = list2;
                            count = i14;
                        }
                        list = listB;
                        i10 = count;
                        hashSet.add(new b(cursorB1.getString(columnIndex8), cursorB1.getString(columnIndex9), cursorB1.getString(columnIndex10), arrayList, arrayList2));
                    }
                    i12++;
                    columnIndex6 = columnIndex6;
                    columnIndex7 = columnIndex7;
                    listB = list;
                    count = i10;
                }
                cursorB1.close();
                Cursor cursorB2 = aVar.b0("PRAGMA index_list(`" + str + "`)");
                try {
                    int columnIndex11 = cursorB2.getColumnIndex("name");
                    int columnIndex12 = cursorB2.getColumnIndex("origin");
                    int columnIndex13 = cursorB2.getColumnIndex("unique");
                    HashSet hashSet2 = null;
                    if (columnIndex11 == -1 || columnIndex12 == -1 || columnIndex13 == -1) {
                        cursorB2.close();
                        break;
                    }
                    HashSet hashSet3 = new HashSet();
                    while (true) {
                        if (!cursorB2.moveToNext()) {
                            cursorB2.close();
                            hashSet2 = hashSet3;
                            break;
                        }
                        if ("c".equals(cursorB2.getString(columnIndex12))) {
                            String string2 = cursorB2.getString(columnIndex11);
                            boolean z10 = true;
                            if (cursorB2.getInt(columnIndex13) != 1) {
                                z10 = false;
                            }
                            d dVarC = c(aVar, string2, z10);
                            if (dVarC == null) {
                                cursorB2.close();
                                break;
                            }
                            hashSet3.add(dVarC);
                        }
                    }
                    return new e(str, map, hashSet, hashSet2);
                } catch (Throwable th) {
                    cursorB2.close();
                    throw th;
                }
            } catch (Throwable th2) {
                cursorB1.close();
                throw th2;
            }
        } catch (Throwable th3) {
            cursorB0.close();
            throw th3;
        }
    }

    public static List<c> b(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("id");
        int columnIndex2 = cursor.getColumnIndex("seq");
        int columnIndex3 = cursor.getColumnIndex("from");
        int columnIndex4 = cursor.getColumnIndex("to");
        int count = cursor.getCount();
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < count; i10++) {
            cursor.moveToPosition(i10);
            arrayList.add(new c(cursor.getInt(columnIndex), cursor.getInt(columnIndex2), cursor.getString(columnIndex3), cursor.getString(columnIndex4)));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public static d c(d1.b bVar, String str, boolean z10) {
        Cursor cursorB0 = ((e1.a) bVar).b0(a0.d.c("PRAGMA index_xinfo(`", str, "`)"));
        try {
            int columnIndex = cursorB0.getColumnIndex("seqno");
            int columnIndex2 = cursorB0.getColumnIndex("cid");
            int columnIndex3 = cursorB0.getColumnIndex("name");
            int columnIndex4 = cursorB0.getColumnIndex("desc");
            if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1 && columnIndex4 != -1) {
                TreeMap treeMap = new TreeMap();
                TreeMap treeMap2 = new TreeMap();
                while (cursorB0.moveToNext()) {
                    if (cursorB0.getInt(columnIndex2) >= 0) {
                        int i10 = cursorB0.getInt(columnIndex);
                        String string = cursorB0.getString(columnIndex3);
                        String str2 = cursorB0.getInt(columnIndex4) > 0 ? "DESC" : "ASC";
                        treeMap.put(Integer.valueOf(i10), string);
                        treeMap2.put(Integer.valueOf(i10), str2);
                    }
                }
                ArrayList arrayList = new ArrayList(treeMap.size());
                arrayList.addAll(treeMap.values());
                ArrayList arrayList2 = new ArrayList(treeMap2.size());
                arrayList2.addAll(treeMap2.values());
                return new d(str, z10, arrayList, arrayList2);
            }
            return null;
        } finally {
            cursorB0.close();
        }
    }

    public final boolean equals(Object obj) {
        Set<d> set;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        String str = this.f37a;
        if (str == null ? eVar.f37a != null : !str.equals(eVar.f37a)) {
            return false;
        }
        Map<String, a> map = this.f38b;
        if (map == null ? eVar.f38b != null : !map.equals(eVar.f38b)) {
            return false;
        }
        Set<b> set2 = this.f39c;
        if (set2 == null ? eVar.f39c != null : !set2.equals(eVar.f39c)) {
            return false;
        }
        Set<d> set3 = this.f40d;
        if (set3 == null || (set = eVar.f40d) == null) {
            return true;
        }
        return set3.equals(set);
    }

    public final int hashCode() {
        String str = this.f37a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        Map<String, a> map = this.f38b;
        int iHashCode2 = (iHashCode + (map != null ? map.hashCode() : 0)) * 31;
        Set<b> set = this.f39c;
        return iHashCode2 + (set != null ? set.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("TableInfo{name='");
        a1.d.f(sbC, this.f37a, '\'', ", columns=");
        sbC.append(this.f38b);
        sbC.append(", foreignKeys=");
        sbC.append(this.f39c);
        sbC.append(", indices=");
        sbC.append(this.f40d);
        sbC.append('}');
        return sbC.toString();
    }
}
