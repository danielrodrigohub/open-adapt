package m7;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: ListFieldSchema.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f10638a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f10639b = new b();

    /* JADX INFO: compiled from: ListFieldSchema.java */
    public static final class a extends f0 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Class<?> f10640c = Collections.unmodifiableList(Collections.emptyList()).getClass();

        public static <L> List<L> c(Object obj, long j10, int i10) {
            Object obj2;
            List<L> listB;
            List<L> list = (List) m1.o(obj, j10);
            if (list.isEmpty()) {
                if (list instanceof e0) {
                    listB = new d0(i10);
                } else {
                    listB = ((list instanceof y0) && (list instanceof y.d)) ? ((y.d) list).b(i10) : new ArrayList<>(i10);
                }
                m1.y(obj, j10, listB);
                return listB;
            }
            if (f10640c.isAssignableFrom(list.getClass())) {
                ArrayList arrayList = new ArrayList(list.size() + i10);
                arrayList.addAll(list);
                m1.y(obj, j10, arrayList);
                obj2 = arrayList;
            } else {
                if (!(list instanceof l1)) {
                    if (!(list instanceof y0) || !(list instanceof y.d)) {
                        return list;
                    }
                    y.d dVar = (y.d) list;
                    if (dVar.f()) {
                        return list;
                    }
                    y.d dVarB = dVar.b(list.size() + i10);
                    m1.y(obj, j10, dVarB);
                    return dVarB;
                }
                d0 d0Var = new d0(list.size() + i10);
                d0Var.addAll((l1) list);
                m1.y(obj, j10, d0Var);
                obj2 = d0Var;
            }
            return (List<L>) obj2;
        }

        @Override // m7.f0
        public final void a(Object obj, long j10) {
            Object objUnmodifiableList;
            List list = (List) m1.o(obj, j10);
            if (list instanceof e0) {
                objUnmodifiableList = ((e0) list).c();
            } else {
                if (f10640c.isAssignableFrom(list.getClass())) {
                    return;
                }
                if ((list instanceof y0) && (list instanceof y.d)) {
                    y.d dVar = (y.d) list;
                    if (dVar.f()) {
                        dVar.a();
                        return;
                    }
                    return;
                }
                objUnmodifiableList = Collections.unmodifiableList(list);
            }
            m1.y(obj, j10, objUnmodifiableList);
        }

        @Override // m7.f0
        public final <E> void b(Object obj, Object obj2, long j10) {
            List list = (List) m1.o(obj2, j10);
            List listC = c(obj, j10, list.size());
            int size = listC.size();
            int size2 = list.size();
            if (size > 0 && size2 > 0) {
                listC.addAll(list);
            }
            if (size > 0) {
                list = listC;
            }
            m1.y(obj, j10, list);
        }
    }

    /* JADX INFO: compiled from: ListFieldSchema.java */
    public static final class b extends f0 {
        public static <E> y.d<E> c(Object obj, long j10) {
            return (y.d) m1.o(obj, j10);
        }

        @Override // m7.f0
        public final void a(Object obj, long j10) {
            c(obj, j10).a();
        }

        @Override // m7.f0
        public final <E> void b(Object obj, Object obj2, long j10) {
            y.d dVarC = c(obj, j10);
            y.d dVarC2 = c(obj2, j10);
            int size = dVarC.size();
            int size2 = dVarC2.size();
            if (size > 0 && size2 > 0) {
                if (!dVarC.f()) {
                    dVarC = dVarC.b(size2 + size);
                }
                dVarC.addAll(dVarC2);
            }
            if (size > 0) {
                dVarC2 = dVarC;
            }
            m1.y(obj, j10, dVarC2);
        }
    }

    public abstract void a(Object obj, long j10);

    public abstract <L> void b(Object obj, Object obj2, long j10);
}
