package pa;

import com.newrelic.agent.android.instrumentation.okhttp3.OkHttp3Instrumentation;
import ea.m;
import gd.j;
import gd.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import p4.h;
import rd.o;

/* JADX INFO: compiled from: AdaptKitPairedDevicesApi.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f implements e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final f f13398b = new f();

    /* JADX INFO: compiled from: AdaptKitExecutor.kt */
    public static final class a extends o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ ta.a f13399h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ List f13400i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ta.a aVar, List list) {
            super(0);
            this.f13399h = aVar;
            this.f13400i = list;
        }

        @Override // qd.a
        public final fd.o invoke() {
            try {
                ta.a aVar = this.f13399h;
                List list = this.f13400i;
                ArrayList arrayList = new ArrayList(j.T(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(((m) it.next()).f6664h);
                }
                f.e(aVar, arrayList);
            } catch (Throwable th) {
                this.f13399h.b(th);
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitExecutor.kt */
    public static final class b extends o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ ta.a f13401h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(ta.a aVar) {
            super(0);
            this.f13401h = aVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            try {
                ta.a aVar = this.f13401h;
                oa.a aVar2 = oa.a.f12525b;
                pa.c cVar = oa.a.f12526c;
                if (cVar == null) {
                    OkHttpClient okHttpClient = (OkHttpClient) oa.a.f12528e.getValue();
                    h.j(okHttpClient, "okHttpClient");
                    pa.c cVar2 = pa.c.f13393d;
                    Objects.requireNonNull(cVar2);
                    cVar2.f12031b = "https://api.nike.com";
                    cVar2.f12030a = okHttpClient;
                    oa.a.f12526c = cVar2;
                    cVar = cVar2;
                }
                aVar.a(cVar.e());
            } catch (Throwable th) {
                this.f13401h.b(th);
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitExecutor.kt */
    public static final class c extends o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ ta.a f13402h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ ta.a f13403i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ List f13404j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(ta.a aVar, ta.a aVar2, List list) {
            super(0);
            this.f13402h = aVar;
            this.f13403i = aVar2;
            this.f13404j = list;
        }

        @Override // qd.a
        public final fd.o invoke() {
            try {
                ta.a aVar = this.f13403i;
                oa.a aVar2 = oa.a.f12525b;
                pa.c cVar = oa.a.f12526c;
                if (cVar == null) {
                    OkHttpClient okHttpClient = (OkHttpClient) oa.a.f12528e.getValue();
                    h.j(okHttpClient, "okHttpClient");
                    pa.c cVar2 = pa.c.f13393d;
                    Objects.requireNonNull(cVar2);
                    cVar2.f12031b = "https://api.nike.com";
                    cVar2.f12030a = okHttpClient;
                    oa.a.f12526c = cVar2;
                    cVar = cVar2;
                }
                aVar.a(cVar.f(this.f13404j));
            } catch (Throwable th) {
                this.f13402h.b(th);
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitExecutor.kt */
    public static final class d extends o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ ta.a f13405h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ List f13406i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(ta.a aVar, List list) {
            super(0);
            this.f13405h = aVar;
            this.f13406i = list;
        }

        /* JADX WARN: Code duplicated, block: B:25:0x007a  */
        @Override // qd.a
        public final fd.o invoke() {
            Object next;
            Object next2;
            Object next3;
            Object next4;
            boolean z10;
            try {
                ta.a aVar = this.f13405h;
                LinkedHashSet<m> linkedHashSet = new LinkedHashSet();
                oa.a aVar2 = oa.a.f12525b;
                pa.c cVar = oa.a.f12526c;
                if (cVar == null) {
                    OkHttpClient okHttpClient = (OkHttpClient) oa.a.f12528e.getValue();
                    h.j(okHttpClient, "okHttpClient");
                    pa.c cVar2 = pa.c.f13393d;
                    Objects.requireNonNull(cVar2);
                    cVar2.f12031b = "https://api.nike.com";
                    cVar2.f12030a = okHttpClient;
                    oa.a.f12526c = cVar2;
                    cVar = cVar2;
                }
                List listN0 = n.n0(cVar.e());
                Iterator it = this.f13406i.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!((m) next).f6666j);
                m mVar = (m) next;
                ArrayList arrayList = (ArrayList) listN0;
                Iterator it2 = arrayList.iterator();
                do {
                    if (!it2.hasNext()) {
                        next2 = null;
                        break;
                    }
                    next2 = it2.next();
                    va.d dVar = (va.d) next2;
                    if (!dVar.f16982k) {
                        z10 = false;
                    } else if (h.c(mVar != null ? mVar.f6664h : null, dVar.f16988q)) {
                        z10 = false;
                    } else {
                        z10 = true;
                    }
                } while (!z10);
                va.d dVar2 = (va.d) next2;
                if (mVar != null) {
                    if (dVar2 != null && mVar.f6675s > dVar2.f16979h) {
                        ArrayList arrayList2 = (ArrayList) listN0;
                        arrayList2.remove(dVar2);
                        Iterator it3 = this.f13406i.iterator();
                        do {
                            if (!it3.hasNext()) {
                                next4 = null;
                                break;
                            }
                            next4 = it3.next();
                        } while (!h.c(dVar2.f16988q, ((m) next4).f6664h));
                        if (((m) next4) == null) {
                            int iIndexOf = arrayList2.indexOf(dVar2);
                            va.d dVarA = va.d.a(dVar2);
                            m mVarA = androidx.lifecycle.o.A(dVarA);
                            arrayList2.remove(iIndexOf);
                            arrayList2.add(iIndexOf, dVarA);
                            linkedHashSet.add(m.a(mVarA, null, false, null, null, null, null, null, System.currentTimeMillis(), false, 6143));
                        }
                    } else if (dVar2 != null && mVar.f6675s < dVar2.f16979h) {
                        linkedHashSet.remove(mVar);
                        linkedHashSet.add(m.a(mVar, null, false, null, null, null, null, null, System.currentTimeMillis(), false, 6139));
                    }
                }
                for (m mVar2 : this.f13406i) {
                    Iterator it4 = arrayList.iterator();
                    do {
                        if (!it4.hasNext()) {
                            next3 = null;
                            break;
                        }
                        next3 = it4.next();
                    } while (!h.c(mVar2.f6664h, ((va.d) next3).f16988q));
                    va.d dVar3 = (va.d) next3;
                    if (h.c(dVar3 != null ? dVar3.f16988q : null, mVar2.f6664h) && dVar3.f16979h < mVar2.f6675s) {
                        linkedHashSet.add(mVar2);
                    } else if (dVar3 == null) {
                        linkedHashSet.add(mVar2);
                    }
                }
                if (!linkedHashSet.isEmpty()) {
                    for (m mVar3 : linkedHashSet) {
                        if (mVar3.f6676t) {
                            continue;
                        } else {
                            oa.a aVar3 = oa.a.f12525b;
                            pa.c cVar3 = oa.a.f12526c;
                            if (cVar3 == null) {
                                OkHttpClient okHttpClient2 = (OkHttpClient) oa.a.f12528e.getValue();
                                h.j(okHttpClient2, "okHttpClient");
                                pa.c cVar4 = pa.c.f13393d;
                                Objects.requireNonNull(cVar4);
                                cVar4.f12031b = "https://api.nike.com";
                                cVar4.f12030a = okHttpClient2;
                                oa.a.f12526c = cVar4;
                                cVar3 = cVar4;
                            }
                            try {
                                Response responseNetworkResponse = OkHttp3Instrumentation.newCall(cVar3.d(), cVar3.c(new pa.d(androidx.lifecycle.o.B(mVar3)))).execute().networkResponse();
                                if (responseNetworkResponse != null) {
                                    responseNetworkResponse.isSuccessful();
                                }
                            } catch (Exception e10) {
                                throw new qa.a(e10);
                            }
                        }
                    }
                }
                oa.a aVar4 = oa.a.f12525b;
                pa.c cVar5 = oa.a.f12526c;
                if (cVar5 == null) {
                    OkHttpClient okHttpClient3 = (OkHttpClient) oa.a.f12528e.getValue();
                    h.j(okHttpClient3, "okHttpClient");
                    pa.c cVar6 = pa.c.f13393d;
                    Objects.requireNonNull(cVar6);
                    cVar6.f12031b = "https://api.nike.com";
                    cVar6.f12030a = okHttpClient3;
                    oa.a.f12526c = cVar6;
                    cVar5 = cVar6;
                }
                aVar.a(cVar5.e());
            } catch (Throwable th) {
                this.f13405h.b(th);
            }
            return fd.o.f7408a;
        }
    }

    public static final void e(ta.a aVar, List list) {
        f fVar = f13398b;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            pa.c cVar = (pa.c) f13398b.f();
            h.j(str, "pairId");
            try {
                Response responseNetworkResponse = OkHttp3Instrumentation.newCall(cVar.d(), cVar.c(new pa.b(str))).execute().networkResponse();
                if (responseNetworkResponse != null) {
                    responseNetworkResponse.isSuccessful();
                }
            } catch (Exception e10) {
                throw new qa.a(e10);
            }
        }
        aVar.a(((pa.c) fVar.f()).e());
    }

    @Override // pa.e
    public final void a(List<m> list, ta.a<List<va.d>> aVar) {
        z9.a.NETWORK.b(new a(aVar, list));
    }

    @Override // pa.e
    public final void b(ta.a<List<va.d>> aVar) {
        z9.a.NETWORK.b(new b(aVar));
    }

    @Override // pa.e
    public final void c(List<String> list, ta.a<Map<String, g>> aVar) {
        z9.a.NETWORK.b(new c(aVar, aVar, list));
    }

    @Override // pa.e
    public final void d(List<m> list, ta.a<List<va.d>> aVar) {
        z9.a.NETWORK.b(new d(aVar, list));
    }

    public final pa.a f() {
        oa.a aVar = oa.a.f12525b;
        pa.c cVar = oa.a.f12526c;
        if (cVar != null) {
            return cVar;
        }
        OkHttpClient okHttpClient = (OkHttpClient) oa.a.f12528e.getValue();
        h.j(okHttpClient, "okHttpClient");
        pa.c cVar2 = pa.c.f13393d;
        Objects.requireNonNull(cVar2);
        cVar2.f12031b = "https://api.nike.com";
        cVar2.f12030a = okHttpClient;
        oa.a.f12526c = cVar2;
        return cVar2;
    }
}
