package b7;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: ListFieldSchema.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f3394a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f3395b = new b();

    /* JADX INFO: compiled from: ListFieldSchema.java */
    public static final class a extends g0 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Class<?> f3396c = Collections.unmodifiableList(Collections.emptyList()).getClass();

        public static <L> List<L> d(Object obj, long j10, int i10) {
            Object obj2;
            List<L> listB;
            List<L> list = (List) p1.n(obj, j10);
            if (list.isEmpty()) {
                if (list instanceof f0) {
                    listB = new e0(i10);
                } else {
                    listB = ((list instanceof z0) && (list instanceof z.c)) ? ((z.c) list).b(i10) : new ArrayList<>(i10);
                }
                p1.x(obj, j10, listB);
                return listB;
            }
            if (f3396c.isAssignableFrom(list.getClass())) {
                ArrayList arrayList = new ArrayList(list.size() + i10);
                arrayList.addAll(list);
                p1.x(obj, j10, arrayList);
                obj2 = arrayList;
            } else {
                if (!(list instanceof o1)) {
                    if (!(list instanceof z0) || !(list instanceof z.c)) {
                        return list;
                    }
                    z.c cVar = (z.c) list;
                    if (cVar.f()) {
                        return list;
                    }
                    z.c cVarB = cVar.b(list.size() + i10);
                    p1.x(obj, j10, cVarB);
                    return cVarB;
                }
                e0 e0Var = new e0(list.size() + i10);
                e0Var.addAll((o1) list);
                p1.x(obj, j10, e0Var);
                obj2 = e0Var;
            }
            return (List<L>) obj2;
        }

        @Override // b7.g0
        public final void a(Object obj, long j10) {
            Object objUnmodifiableList;
            List list = (List) p1.n(obj, j10);
            if (list instanceof f0) {
                objUnmodifiableList = ((f0) list).c();
            } else {
                if (f3396c.isAssignableFrom(list.getClass())) {
                    return;
                }
                if ((list instanceof z0) && (list instanceof z.c)) {
                    z.c cVar = (z.c) list;
                    if (cVar.f()) {
                        cVar.a();
                        return;
                    }
                    return;
                }
                objUnmodifiableList = Collections.unmodifiableList(list);
            }
            p1.x(obj, j10, objUnmodifiableList);
        }

        @Override // b7.g0
        public final <E> void b(Object obj, Object obj2, long j10) {
            List list = (List) p1.n(obj2, j10);
            List listD = d(obj, j10, list.size());
            int size = listD.size();
            int size2 = list.size();
            if (size > 0 && size2 > 0) {
                listD.addAll(list);
            }
            if (size > 0) {
                list = listD;
            }
            p1.x(obj, j10, list);
        }

        @Override // b7.g0
        public final <L> List<L> c(Object obj, long j10) {
            return d(obj, j10, 10);
        }
    }

    /* JADX INFO: compiled from: ListFieldSchema.java */
    public static final class b extends g0 {
        public static <E> z.c<E> d(Object obj, long j10) {
            return (z.c) p1.n(obj, j10);
        }

        @Override // b7.g0
        public final void a(Object obj, long j10) {
            d(obj, j10).a();
        }

        @Override // b7.g0
        public final <E> void b(Object obj, Object obj2, long j10) {
            z.c cVarD = d(obj, j10);
            z.c cVarD2 = d(obj2, j10);
            int size = cVarD.size();
            int size2 = cVarD2.size();
            if (size > 0 && size2 > 0) {
                if (!cVarD.f()) {
                    cVarD = cVarD.b(size2 + size);
                }
                cVarD.addAll(cVarD2);
            }
            if (size > 0) {
                cVarD2 = cVarD;
            }
            p1.x(obj, j10, cVarD2);
        }

        @Override // b7.g0
        public final <L> List<L> c(Object obj, long j10) {
            z.c cVarD = d(obj, j10);
            if (cVarD.f()) {
                return cVarD;
            }
            int size = cVarD.size();
            z.c cVarB = cVarD.b(size == 0 ? 10 : size * 2);
            p1.x(obj, j10, cVarB);
            return cVarB;
        }
    }

    public abstract void a(Object obj, long j10);

    public abstract <L> void b(Object obj, Object obj2, long j10);

    public abstract <L> List<L> c(Object obj, long j10);
}
