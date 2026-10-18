package s3;

import android.net.Uri;
import c4.c0;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import m5.d0;
import m5.h0;
import n3.z0;

/* JADX INFO: compiled from: DefaultExtractorsFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class f implements l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f15044b = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f15045c = new a(z0.f11841e);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f15046d = new a(n3.n.f11547h);

    /* JADX INFO: compiled from: DefaultExtractorsFactory.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final InterfaceC0256a f15047a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AtomicBoolean f15048b = new AtomicBoolean(false);

        /* JADX INFO: renamed from: s3.f$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: DefaultExtractorsFactory.java */
        public interface InterfaceC0256a {
            Constructor<? extends h> b() throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException;
        }

        public a(InterfaceC0256a interfaceC0256a) {
            this.f15047a = interfaceC0256a;
        }

        public final h a(Object... objArr) {
            Constructor<? extends h> constructorB;
            synchronized (this.f15048b) {
                if (!this.f15048b.get()) {
                    try {
                        constructorB = this.f15047a.b();
                    } catch (ClassNotFoundException unused) {
                        this.f15048b.set(true);
                        constructorB = null;
                    } catch (Exception e10) {
                        throw new RuntimeException("Error instantiating extension", e10);
                    }
                }
                constructorB = null;
            }
            if (constructorB == null) {
                return null;
            }
            try {
                return constructorB.newInstance(objArr);
            } catch (Exception e11) {
                throw new IllegalStateException("Unexpected error creating extractor", e11);
            }
        }
    }

    public final void a(int i10, List<h> list) {
        switch (i10) {
            case 0:
                list.add(new c4.a());
                break;
            case 1:
                list.add(new c4.c());
                break;
            case 2:
                list.add(new c4.e(0));
                break;
            case 3:
                list.add(new t3.a(0));
                break;
            case 4:
                h hVarA = f15045c.a(0);
                if (hVarA == null) {
                    list.add(new v3.b());
                } else {
                    list.add(hVarA);
                }
                break;
            case 5:
                list.add(new w3.b());
                break;
            case 6:
                list.add(new y3.d(0));
                break;
            case 7:
                list.add(new z3.d(-9223372036854775807L));
                break;
            case 8:
                list.add(new a4.e(0, null, null, Collections.emptyList()));
                list.add(new a4.h(0));
                break;
            case 9:
                list.add(new b4.c());
                break;
            case 10:
                list.add(new c4.w());
                break;
            case 11:
                list.add(new c0(1, new d0(0L), new c4.g()));
                break;
            case 12:
                list.add(new d4.a());
                break;
            case 14:
                list.add(new x3.a());
                break;
            case 15:
                h hVarA2 = f15046d.a(new Object[0]);
                if (hVarA2 != null) {
                    list.add(hVarA2);
                }
                break;
            case 16:
                list.add(new u3.b());
                break;
        }
    }

    @Override // s3.l
    public final synchronized h[] c() {
        return e(Uri.EMPTY, new HashMap());
    }

    @Override // s3.l
    public final synchronized h[] e(Uri uri, Map<String, List<String>> map) {
        ArrayList arrayList;
        int[] iArr = f15044b;
        arrayList = new ArrayList(16);
        int iC = h0.c(map);
        if (iC != -1) {
            a(iC, arrayList);
        }
        int iD = h0.d(uri);
        if (iD != -1 && iD != iC) {
            a(iD, arrayList);
        }
        for (int i10 = 0; i10 < 16; i10++) {
            int i11 = iArr[i10];
            if (i11 != iC && i11 != iD) {
                a(i11, arrayList);
            }
        }
        return (h[]) arrayList.toArray(new h[arrayList.size()]);
    }
}
