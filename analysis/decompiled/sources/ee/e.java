package ee;

import de.a0;
import de.d0;
import de.l0;
import de.w;
import gd.n;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import rd.o;
import yd.s;

/* JADX INFO: compiled from: ResourceFileSystem.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class e extends o implements qd.a<List<? extends fd.e<? extends de.k, ? extends a0>>> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ClassLoader f6755h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(ClassLoader classLoader) {
        super(0);
        this.f6755h = classLoader;
    }

    @Override // qd.a
    public final List<? extends fd.e<? extends de.k, ? extends a0>> invoke() throws IOException {
        Iterator it;
        ArrayList arrayList;
        fd.e eVar;
        int iS0;
        fd.e eVar2;
        d.a aVar = d.f6752b;
        d.a aVar2 = d.f6752b;
        ClassLoader classLoader = this.f6755h;
        p4.h.j(classLoader, "<this>");
        Enumeration<URL> resources = classLoader.getResources("");
        p4.h.i(resources, "getResources(\"\")");
        ArrayList<URL> list = Collections.list(resources);
        p4.h.i(list, "list(this)");
        ArrayList arrayList2 = new ArrayList();
        for (URL url : list) {
            d.a aVar3 = d.f6752b;
            d.a aVar4 = d.f6752b;
            p4.h.i(url, "it");
            if (p4.h.c(url.getProtocol(), "file")) {
                de.k kVar = de.k.SYSTEM;
                a0.a aVar5 = a0.f6189i;
                eVar2 = new fd.e(kVar, a0.a.b(new File(url.toURI())));
            } else {
                eVar2 = null;
            }
            if (eVar2 != null) {
                arrayList2.add(eVar2);
            }
        }
        Enumeration<URL> resources2 = classLoader.getResources("META-INF/MANIFEST.MF");
        p4.h.i(resources2, "getResources(\"META-INF/MANIFEST.MF\")");
        ArrayList list2 = Collections.list(resources2);
        p4.h.i(list2, "list(this)");
        ArrayList arrayList3 = new ArrayList();
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            URL url2 = (URL) it2.next();
            d.a aVar6 = d.f6752b;
            d.a aVar7 = d.f6752b;
            p4.h.i(url2, "it");
            String string = url2.toString();
            p4.h.i(string, "toString()");
            if (yd.o.g0(string, "jar:file:", false) && (iS0 = s.s0(string, "!", 6)) != -1) {
                a0.a aVar8 = a0.f6189i;
                String strSubstring = string.substring(4, iS0);
                p4.h.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                a0 a0VarB = a0.a.b(new File(URI.create(strSubstring)));
                de.k kVar2 = de.k.SYSTEM;
                c cVar = c.f6751h;
                p4.h.j(kVar2, "fileSystem");
                p4.h.j(cVar, "predicate");
                de.i iVarOpenReadOnly = kVar2.openReadOnly(a0VarB);
                try {
                    long jG0 = iVarOpenReadOnly.g0() - ((long) 22);
                    if (jG0 < 0) {
                        throw new IOException("not a zip: size=" + iVarOpenReadOnly.g0());
                    }
                    long jMax = Math.max(jG0 - 65536, 0L);
                    while (true) {
                        de.f fVarB = w.b(iVarOpenReadOnly.h0(jG0));
                        try {
                            d0 d0Var = (d0) fVarB;
                            if (d0Var.y() == 101010256) {
                                int iY = d0Var.Y() & 65535;
                                int iY2 = d0Var.Y() & 65535;
                                long jY = d0Var.Y() & 65535;
                                it = it2;
                                if (jY != (d0Var.Y() & 65535) || iY != 0 || iY2 != 0) {
                                    throw new IOException("unsupported zip: spanned");
                                }
                                arrayList = arrayList3;
                                a0 a0Var = a0VarB;
                                d0Var.a(4L);
                                long jY2 = ((long) d0Var.y()) & 4294967295L;
                                int iY3 = d0Var.Y() & 65535;
                                a aVar9 = new a(jY, jY2, iY3);
                                d0 d0Var2 = (d0) fVarB;
                                d0Var2.f0(iY3);
                                d0Var2.close();
                                long j10 = jG0 - ((long) 20);
                                long j11 = 0;
                                if (j10 > 0) {
                                    de.f fVarB2 = w.b(iVarOpenReadOnly.h0(j10));
                                    try {
                                        d0 d0Var3 = (d0) fVarB2;
                                        if (d0Var3.y() == 117853008) {
                                            int iY4 = d0Var3.y();
                                            long jI = d0Var3.I();
                                            if (d0Var3.y() != 1 || iY4 != 0) {
                                                throw new IOException("unsupported zip: spanned");
                                            }
                                            de.f fVarB3 = w.b(iVarOpenReadOnly.h0(jI));
                                            try {
                                                d0 d0Var4 = (d0) fVarB3;
                                                int iY5 = d0Var4.y();
                                                if (iY5 != 101075792) {
                                                    throw new IOException("bad zip: expected " + g.b(101075792) + " but was " + g.b(iY5));
                                                }
                                                d0Var4.a(12L);
                                                int iY6 = d0Var4.y();
                                                int iY7 = d0Var4.y();
                                                long jI2 = d0Var4.I();
                                                if (jI2 != d0Var4.I() || iY6 != 0 || iY7 != 0) {
                                                    throw new IOException("unsupported zip: spanned");
                                                }
                                                d0Var4.a(8L);
                                                a aVar10 = new a(jI2, d0Var4.I(), iY3);
                                                d3.e.d(fVarB3, null);
                                                aVar9 = aVar10;
                                            } catch (Throwable th) {
                                                try {
                                                    throw th;
                                                } catch (Throwable th2) {
                                                    d3.e.d(fVarB3, th);
                                                    throw th2;
                                                }
                                            }
                                        }
                                        d3.e.d(fVarB2, null);
                                    } catch (Throwable th3) {
                                        try {
                                            throw th3;
                                        } catch (Throwable th4) {
                                            d3.e.d(fVarB2, th3);
                                            throw th4;
                                        }
                                    }
                                }
                                ArrayList arrayList4 = new ArrayList();
                                de.f fVarB4 = w.b(iVarOpenReadOnly.h0(aVar9.f6746b));
                                try {
                                    long j12 = aVar9.f6745a;
                                    while (j11 < j12) {
                                        f fVarC = g.c(fVarB4);
                                        long j13 = j12;
                                        if (fVarC.f6762g >= aVar9.f6746b) {
                                            throw new IOException("bad zip: local file header offset >= central directory offset");
                                        }
                                        if (((Boolean) cVar.invoke(fVarC)).booleanValue()) {
                                            arrayList4.add(fVarC);
                                        }
                                        j11++;
                                        j12 = j13;
                                    }
                                    d3.e.d(fVarB4, null);
                                    l0 l0Var = new l0(a0Var, kVar2, g.a(arrayList4));
                                    d3.e.d(iVarOpenReadOnly, null);
                                    eVar = new fd.e(l0Var, d.f6753c);
                                    break;
                                } catch (Throwable th5) {
                                    try {
                                        throw th5;
                                    } catch (Throwable th6) {
                                        d3.e.d(fVarB4, th5);
                                        throw th6;
                                    }
                                }
                                try {
                                    throw th;
                                } catch (Throwable th7) {
                                    d3.e.d(iVarOpenReadOnly, th);
                                    throw th7;
                                }
                            }
                            Iterator it3 = it2;
                            ArrayList arrayList5 = arrayList3;
                            a0 a0Var2 = a0VarB;
                            d0Var.close();
                            jG0--;
                            if (jG0 < jMax) {
                                throw new IOException("not a zip: end of central directory signature not found");
                            }
                            arrayList3 = arrayList5;
                            a0VarB = a0Var2;
                            it2 = it3;
                        } catch (Throwable th8) {
                            ((d0) fVarB).close();
                            throw th8;
                        }
                    }
                } catch (Throwable th9) {
                    throw th9;
                }
            } else {
                it = it2;
                arrayList = arrayList3;
                eVar = null;
            }
            if (eVar != null) {
                arrayList.add(eVar);
            }
            arrayList3 = arrayList;
            it2 = it;
        }
        return n.g0(arrayList2, arrayList3);
    }
}
