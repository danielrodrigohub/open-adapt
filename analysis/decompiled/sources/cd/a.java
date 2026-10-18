package cd;

import android.content.Context;
import fd.o;
import gd.n;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import ld.i;
import p4.h;
import qd.p;

/* JADX INFO: compiled from: AndroidFileSystem.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a implements cd.e {
    public static final C0078a Companion = new C0078a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final File f4346a;

    /* JADX INFO: renamed from: cd.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AndroidFileSystem.kt */
    public static final class C0078a {
    }

    /* JADX INFO: compiled from: AndroidFileSystem.kt */
    public static final class b implements cd.e.a<String> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f4347a;

        public b(Context context) {
            h.j(context, "context");
            this.f4347a = context;
        }

        @Override // cd.e.a
        public final String a(List list) throws Throwable {
            Object objG;
            String str;
            Object obj;
            try {
                ArrayList arrayList = new ArrayList();
                Iterator it = ((ArrayList) list).iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    if (next != null ? next instanceof dd.b : true) {
                        arrayList.add(next);
                    }
                }
                Object objA0 = n.a0(arrayList);
                if (objA0 == null) {
                    Objects.requireNonNull(dd.b.Companion);
                    objA0 = dd.b.Retain;
                }
                int iOrdinal = ((dd.b) objA0).ordinal();
                if (iOrdinal == 0 || iOrdinal == 1) {
                    objG = this.f4347a.getCacheDir();
                } else {
                    if (iOrdinal != 2) {
                        throw new j2.a();
                    }
                    objG = this.f4347a.getFilesDir();
                }
                if (objG == null) {
                    throw new FileNotFoundException();
                }
                if (!(objG instanceof fd.f.a)) {
                    try {
                        objG = new File((File) objG, "com.nike.persistence");
                    } catch (Throwable th) {
                        objG = d3.e.g(th);
                    }
                }
                if (!(objG instanceof fd.f.a)) {
                    try {
                        File file = (File) objG;
                        ArrayList arrayList2 = new ArrayList();
                        Iterator it2 = ((ArrayList) list).iterator();
                        while (it2.hasNext()) {
                            Object next2 = it2.next();
                            if (next2 != null ? next2 instanceof dd.c : true) {
                                arrayList2.add(next2);
                            }
                        }
                        Object objA1 = n.a0(arrayList2);
                        if (objA1 == null) {
                            Objects.requireNonNull(dd.c.Companion);
                            objA1 = dd.c.Local;
                        }
                        int iOrdinal2 = ((dd.c) objA1).ordinal();
                        if (iOrdinal2 == 0) {
                            ArrayList arrayList3 = new ArrayList();
                            for (Object obj2 : (ArrayList) list) {
                                if (obj2 instanceof bd.e) {
                                    arrayList3.add(obj2);
                                }
                            }
                            bd.e eVar = (bd.e) n.a0(arrayList3);
                            if (eVar == null || (str = eVar.f3795h) == null) {
                                str = "local";
                            }
                            objG = new File(file, str);
                        } else {
                            if (iOrdinal2 != 1) {
                                throw new j2.a();
                            }
                            objG = new File(file, "shared");
                        }
                    } catch (Throwable th2) {
                        objG = d3.e.g(th2);
                    }
                }
                if (!(objG instanceof fd.f.a)) {
                    try {
                        File file2 = (File) objG;
                        ArrayList arrayList4 = new ArrayList();
                        Iterator it3 = ((ArrayList) list).iterator();
                        while (it3.hasNext()) {
                            Object next3 = it3.next();
                            if (next3 != null ? next3 instanceof dd.a : true) {
                                arrayList4.add(next3);
                            }
                        }
                        Object objA2 = n.a0(arrayList4);
                        if (objA2 == null) {
                            Objects.requireNonNull(dd.a.Companion);
                            objA2 = dd.a.App;
                        }
                        int iOrdinal3 = ((dd.a) objA2).ordinal();
                        if (iOrdinal3 == 0) {
                            objG = new File(file2, "app/");
                        } else {
                            if (iOrdinal3 != 1) {
                                throw new j2.a();
                            }
                            ArrayList arrayList5 = new ArrayList();
                            for (Object obj3 : (ArrayList) list) {
                                if (obj3 instanceof ad.f) {
                                    arrayList5.add(obj3);
                                }
                            }
                            ad.f fVar = (ad.f) n.a0(arrayList5);
                            if (fVar == null || (obj = fVar.f617h) == null) {
                                obj = "void";
                            }
                            objG = new File(file2, h.B("session-", obj));
                        }
                    } catch (Throwable th3) {
                        objG = d3.e.g(th3);
                    }
                }
                if (!(objG instanceof fd.f.a)) {
                    try {
                        File file3 = (File) objG;
                        ArrayList arrayList6 = new ArrayList();
                        Iterator it4 = ((ArrayList) list).iterator();
                        while (it4.hasNext()) {
                            Object next4 = it4.next();
                            if (next4 != null ? next4 instanceof dd.f : true) {
                                arrayList6.add(next4);
                            }
                        }
                        Object objA3 = n.a0(arrayList6);
                        if (objA3 == null) {
                            Objects.requireNonNull(dd.f.Companion);
                            objA3 = dd.f.f6183i;
                        }
                        objG = new File(file3, ((dd.f) objA3).f6184h);
                    } catch (Throwable th4) {
                        objG = d3.e.g(th4);
                    }
                }
                if (!(objG instanceof fd.f.a)) {
                    try {
                        File file4 = (File) objG;
                        ArrayList arrayList7 = new ArrayList();
                        Iterator it5 = ((ArrayList) list).iterator();
                        while (it5.hasNext()) {
                            Object next5 = it5.next();
                            if (next5 != null ? next5 instanceof dd.d : true) {
                                arrayList7.add(next5);
                            }
                        }
                        Object objA4 = n.a0(arrayList7);
                        if (objA4 == null) {
                            Objects.requireNonNull(dd.d.Companion);
                            objA4 = dd.d.f6178i;
                        }
                        objG = new File(file4, ((dd.d) objA4).f6179h);
                    } catch (Throwable th5) {
                        objG = d3.e.g(th5);
                    }
                }
                if (!(objG instanceof fd.f.a)) {
                    try {
                        File file5 = (File) objG;
                        file5.mkdirs();
                        objG = file5.getPath();
                    } catch (Throwable th6) {
                        objG = d3.e.g(th6);
                    }
                }
                d3.e.p(objG);
                String str2 = (String) objG;
                h.i(str2, "it");
                return str2;
            } catch (Throwable th7) {
                objG = d3.e.g(th7);
            }
        }
    }

    /* JADX INFO: compiled from: AndroidFileSystem.kt */
    @ld.e(c = "com.nike.persistence.implementation.repositories.AndroidFileSystem$readBytes$2", f = "AndroidFileSystem.kt", l = {}, m = "invokeSuspend")
    public static final class c extends i implements p<CoroutineScope, jd.d<? super byte[]>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public /* synthetic */ Object f4348h;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ String f4350j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String str, jd.d<? super c> dVar) {
            super(2, dVar);
            this.f4350j = str;
        }

        @Override // ld.a
        public final jd.d<o> create(Object obj, jd.d<?> dVar) {
            c cVar = a.this.new c(this.f4350j, dVar);
            cVar.f4348h = obj;
            return cVar;
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super byte[]> dVar) {
            return ((c) create(coroutineScope, dVar)).invokeSuspend(o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objG;
            Object objG2;
            File file;
            d3.e.p(obj);
            try {
                File file2 = new File(a.this.f4346a, this.f4350j);
                if (Boolean.valueOf(!file2.exists()).booleanValue()) {
                    file = null;
                }
                if (file == null) {
                    file = file2;
                    throw new FileNotFoundException();
                }
                file = file2;
                objG = file;
            } catch (Throwable th) {
                objG = d3.e.g(th);
            }
            boolean z10 = !(objG instanceof fd.f.a);
            Object obj2 = objG;
            if (z10) {
                try {
                    objG2 = c3.d.n((File) objG);
                } catch (Throwable th2) {
                    objG2 = d3.e.g(th2);
                }
                obj2 = objG2;
            }
            d3.e.p(obj2);
            return obj2;
        }
    }

    /* JADX INFO: compiled from: AndroidFileSystem.kt */
    @ld.e(c = "com.nike.persistence.implementation.repositories.AndroidFileSystem$readText$2", f = "AndroidFileSystem.kt", l = {}, m = "invokeSuspend")
    public static final class d extends i implements p<CoroutineScope, jd.d<? super String>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public /* synthetic */ Object f4351h;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ String f4353j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str, jd.d<? super d> dVar) {
            super(2, dVar);
            this.f4353j = str;
        }

        @Override // ld.a
        public final jd.d<o> create(Object obj, jd.d<?> dVar) {
            d dVar2 = a.this.new d(this.f4353j, dVar);
            dVar2.f4351h = obj;
            return dVar2;
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super String> dVar) {
            return ((d) create(coroutineScope, dVar)).invokeSuspend(o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objG;
            Object objG2;
            File file;
            d3.e.p(obj);
            try {
                File file2 = new File(a.this.f4346a, this.f4353j);
                if (Boolean.valueOf(!file2.exists()).booleanValue()) {
                    file = null;
                }
                if (file == null) {
                    file = file2;
                    throw new FileNotFoundException();
                }
                file = file2;
                objG = file;
            } catch (Throwable th) {
                objG = d3.e.g(th);
            }
            boolean z10 = !(objG instanceof fd.f.a);
            Object obj2 = objG;
            if (z10) {
                try {
                    Charset charset = yd.a.f19171b;
                    h.j(charset, "charset");
                    InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream((File) objG), charset);
                    try {
                        objG2 = androidx.lifecycle.o.E(inputStreamReader);
                        d3.e.d(inputStreamReader, null);
                    } catch (Throwable th2) {
                        try {
                            throw th2;
                        } catch (Throwable th3) {
                            d3.e.d(inputStreamReader, th2);
                            throw th3;
                        }
                    }
                } catch (Throwable th4) {
                    objG2 = d3.e.g(th4);
                }
                obj2 = objG2;
            }
            Throwable thA = fd.f.a(obj2);
            if (thA == null) {
                return obj2;
            }
            throw thA;
        }
    }

    /* JADX INFO: compiled from: AndroidFileSystem.kt */
    @ld.e(c = "com.nike.persistence.implementation.repositories.AndroidFileSystem$writeText$2", f = "AndroidFileSystem.kt", l = {}, m = "invokeSuspend")
    public static final class e extends i implements p<CoroutineScope, jd.d<? super o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public /* synthetic */ Object f4354h;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ String f4356j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final /* synthetic */ String f4357k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(String str, String str2, jd.d<? super e> dVar) {
            super(2, dVar);
            this.f4356j = str;
            this.f4357k = str2;
        }

        @Override // ld.a
        public final jd.d<o> create(Object obj, jd.d<?> dVar) {
            e eVar = a.this.new e(this.f4356j, this.f4357k, dVar);
            eVar.f4354h = obj;
            return eVar;
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super o> dVar) throws Throwable {
            e eVar = (e) create(coroutineScope, dVar);
            o oVar = o.f7408a;
            eVar.invokeSuspend(oVar);
            return oVar;
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objG;
            d3.e.p(obj);
            a aVar = a.this;
            String str = this.f4356j;
            String str2 = this.f4357k;
            try {
                File file = new File(aVar.f4346a, str);
                Charset charset = yd.a.f19171b;
                h.j(str2, "text");
                h.j(charset, "charset");
                byte[] bytes = str2.getBytes(charset);
                h.i(bytes, "this as java.lang.String).getBytes(charset)");
                c3.d.s(file, bytes);
                objG = o.f7408a;
            } catch (Throwable th) {
                objG = d3.e.g(th);
            }
            Throwable thA = fd.f.a(objG);
            if (thA == null) {
                return o.f7408a;
            }
            throw thA;
        }
    }

    public a(cd.e.a<String> aVar, List<? extends yc.a.b> list) {
        h.j(aVar, "locator");
        h.j(list, "options");
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (obj instanceof yc.a.c) {
                arrayList.add(obj);
            }
        }
        this.f4346a = new File(aVar.a(arrayList));
    }

    @Override // cd.e
    public final Object a(String str, String str2, jd.d<? super o> dVar) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new e(str, str2, null), dVar);
        return objWithContext == kd.a.COROUTINE_SUSPENDED ? objWithContext : o.f7408a;
    }

    @Override // cd.e
    public final Object b(String str, jd.d<? super byte[]> dVar) {
        return BuildersKt.withContext(Dispatchers.getIO(), new c(str, null), dVar);
    }

    @Override // cd.e
    public final Object d(String str, jd.d<? super String> dVar) {
        return BuildersKt.withContext(Dispatchers.getIO(), new d(str, null), dVar);
    }
}
