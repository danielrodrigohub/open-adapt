package z8;

import androidx.appcompat.widget.o;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.nike.adapt.adk.AdaptMarshaller;
import com.nike.adapt.adk.model.AdaptShoeColor;
import java.util.Objects;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;
import qd.p;

/* JADX INFO: compiled from: LightPacksRequestQueue.kt */
/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f19418a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CoroutineScope f19419b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public b f19420c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public b f19421d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f19422e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Job f19423f;

    /* JADX INFO: compiled from: LightPacksRequestQueue.kt */
    public interface a {
        void E();

        void F(z8.a aVar);

        void K(z8.a aVar);

        void X(z8.a aVar);

        void k(boolean z10);

        void o();

        void t();

        void y(boolean z10);

        void z(AdaptShoeColor adaptShoeColor);
    }

    /* JADX INFO: compiled from: LightPacksRequestQueue.kt */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f19424a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AdaptShoeColor f19425b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final z8.a f19426c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f19427d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f19428e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f19429f;

        public b(int i10, AdaptShoeColor adaptShoeColor, z8.a aVar, int i11) {
            adaptShoeColor = (i11 & 2) != 0 ? null : adaptShoeColor;
            aVar = (i11 & 4) != 0 ? null : aVar;
            o.d(i10, AnalyticsAttribute.TYPE_ATTRIBUTE);
            this.f19424a = i10;
            this.f19425b = adaptShoeColor;
            this.f19426c = aVar;
            this.f19427d = false;
            this.f19428e = false;
            this.f19429f = false;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f19424a == bVar.f19424a && p4.h.c(this.f19425b, bVar.f19425b) && this.f19426c == bVar.f19426c && this.f19427d == bVar.f19427d && this.f19428e == bVar.f19428e && this.f19429f == bVar.f19429f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v11, types: [int] */
        /* JADX WARN: Type inference failed for: r0v7, types: [int] */
        /* JADX WARN: Type inference failed for: r0v9, types: [int] */
        /* JADX WARN: Type inference failed for: r1v10 */
        /* JADX WARN: Type inference failed for: r1v12 */
        /* JADX WARN: Type inference failed for: r1v13 */
        /* JADX WARN: Type inference failed for: r1v5, types: [int] */
        /* JADX WARN: Type inference failed for: r1v7, types: [int] */
        /* JADX WARN: Type inference failed for: r1v9 */
        /* JADX WARN: Type inference failed for: r2v2 */
        /* JADX WARN: Type inference failed for: r2v3, types: [int] */
        /* JADX WARN: Type inference failed for: r2v4 */
        public final int hashCode() {
            int iA = q.g.a(this.f19424a) * 31;
            AdaptShoeColor adaptShoeColor = this.f19425b;
            int iHashCode = (iA + (adaptShoeColor == null ? 0 : adaptShoeColor.hashCode())) * 31;
            z8.a aVar = this.f19426c;
            int iHashCode2 = (iHashCode + (aVar != null ? aVar.hashCode() : 0)) * 31;
            boolean z10 = this.f19427d;
            ?? r10 = z10;
            if (z10) {
                r10 = 1;
            }
            int i10 = (iHashCode2 + r10) * 31;
            boolean z11 = this.f19428e;
            ?? r11 = z11;
            if (z11) {
                r11 = 1;
            }
            int i11 = (i10 + r11) * 31;
            boolean z12 = this.f19429f;
            return i11 + (z12 ? 1 : z12);
        }

        public final String toString() {
            int i10 = this.f19424a;
            AdaptShoeColor adaptShoeColor = this.f19425b;
            z8.a aVar = this.f19426c;
            boolean z10 = this.f19427d;
            boolean z11 = this.f19428e;
            boolean z12 = this.f19429f;
            StringBuilder sbC = a0.b.c("Request(type=");
            sbC.append(a0.d.e(i10));
            sbC.append(", color=");
            sbC.append(adaptShoeColor);
            sbC.append(", lightPack=");
            sbC.append(aVar);
            sbC.append(", pendingColorChange=");
            sbC.append(z10);
            sbC.append(", pendingStopAnimation=");
            sbC.append(z11);
            sbC.append(", pendingStartAnimation=");
            sbC.append(z12);
            sbC.append(")");
            return sbC.toString();
        }
    }

    /* JADX INFO: compiled from: LightPacksRequestQueue.kt */
    @ld.e(c = "com.nike.adapt.ui.lighting.lightpacks.LightPacksRequestQueue$queueRequest$1", f = "LightPacksRequestQueue.kt", l = {51}, m = "invokeSuspend")
    public static final class c extends ld.i implements p<CoroutineScope, jd.d<? super fd.o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f19430h;

        public c(jd.d<? super c> dVar) {
            super(2, dVar);
        }

        @Override // ld.a
        public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
            return m.this.new c(dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
            return ((c) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f19430h;
            if (i10 == 0) {
                d3.e.p(obj);
                this.f19430h = 1;
                if (DelayKt.delay(4000L, this) == aVar) {
                    return aVar;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            m mVar = m.this;
            Objects.requireNonNull(mVar);
            if (System.currentTimeMillis() - mVar.f19422e > 4000) {
                m.this.f19418a.E();
            }
            return fd.o.f7408a;
        }
    }

    public m(a aVar, CoroutineScope coroutineScope) {
        p4.h.j(aVar, "handler");
        this.f19418a = aVar;
        this.f19419b = coroutineScope;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x004b  */
    /* JADX WARN: Code duplicated, block: B:33:0x004d  */
    public final void a() {
        boolean z10;
        boolean z11;
        b bVar = this.f19420c;
        if (bVar != null) {
            if ((bVar.f19427d || bVar.f19428e || bVar.f19429f) ? false : true) {
                b bVar2 = this.f19421d;
                if (bVar2 != null) {
                    int iA = q.g.a(bVar.f19424a);
                    if (iA == 0) {
                        if (bVar.f19424a == bVar2.f19424a) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        z10 = !z11;
                    } else {
                        if (iA != 1) {
                            if (iA != 2 && iA != 3) {
                                if (iA != 4) {
                                    if (iA != 5) {
                                        throw new j2.a();
                                    }
                                }
                            }
                            if (bVar.f19424a == bVar2.f19424a) {
                                z11 = true;
                            } else {
                                z11 = false;
                            }
                            z10 = !z11;
                        }
                        if (bVar.f19424a == bVar2.f19424a && bVar.f19426c == bVar2.f19426c) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        z10 = !z11;
                    }
                } else {
                    z10 = false;
                }
                this.f19420c = null;
                Job job = this.f19423f;
                if (job != null) {
                    Job.DefaultImpls.cancel$default(job, null, 1, null);
                }
                if (z10) {
                    b bVar3 = this.f19421d;
                    if (bVar3 != null) {
                        c(bVar3);
                        return;
                    }
                    return;
                }
                int iA2 = q.g.a(bVar.f19424a);
                if (iA2 == 0 || iA2 == 1) {
                    z8.a aVar = bVar.f19426c;
                    if (aVar != null) {
                        this.f19418a.K(aVar);
                        return;
                    }
                    return;
                }
                if (iA2 == 2) {
                    this.f19418a.k(false);
                    return;
                }
                if (iA2 == 3) {
                    this.f19418a.k(true);
                    return;
                }
                if (iA2 != 4) {
                    if (iA2 != 5) {
                        return;
                    }
                    this.f19418a.o();
                } else {
                    z8.a aVar2 = bVar.f19426c;
                    if (aVar2 != null) {
                        this.f19418a.X(aVar2);
                    }
                }
            }
        }
    }

    public final void b(z8.a aVar) {
        c(new b(aVar == z8.a.MY_LIGHTS ? 1 : 2, null, aVar, 58));
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0082  */
    /* JADX WARN: Code duplicated, block: B:34:0x0086  */
    public final void c(b bVar) {
        z8.a aVar;
        boolean z10 = false;
        if (this.f19420c != null) {
            if (!(System.currentTimeMillis() - this.f19422e > 4000)) {
                this.f19421d = bVar;
                return;
            }
        }
        this.f19420c = bVar;
        this.f19422e = System.currentTimeMillis();
        this.f19421d = null;
        b bVar2 = this.f19420c;
        if (bVar2 != null) {
            int iA = q.g.a(bVar2.f19424a);
            if (iA == 0) {
                this.f19418a.t();
                bVar2.f19428e = true;
            } else if (iA == 1) {
                aVar = bVar2.f19426c;
                if (aVar != null) {
                    this.f19418a.t();
                    this.f19418a.F(aVar);
                    this.f19418a.z(h8.c.f8298b.c());
                    bVar2.f19428e = true;
                    bVar2.f19429f = true;
                    bVar2.f19427d = true;
                }
            } else if (iA == 2) {
                AdaptShoeColor adaptShoeColor = bVar2.f19425b;
                if (adaptShoeColor != null) {
                    this.f19418a.z(adaptShoeColor);
                    bVar2.f19427d = true;
                }
            } else if (iA == 3) {
                AdaptShoeColor adaptShoeColor2 = bVar2.f19425b;
                if (adaptShoeColor2 != null) {
                    this.f19418a.z(adaptShoeColor2);
                    this.f19418a.t();
                    bVar2.f19427d = true;
                    bVar2.f19428e = true;
                }
            } else if (iA == 4) {
                aVar = bVar2.f19426c;
                if (aVar != null) {
                    this.f19418a.t();
                    this.f19418a.F(aVar);
                    this.f19418a.z(h8.c.f8298b.c());
                    bVar2.f19428e = true;
                    bVar2.f19429f = true;
                    bVar2.f19427d = true;
                }
            } else {
                if (iA != 5) {
                    throw new j2.a();
                }
                AdaptMarshaller.AdaptPreset adaptPreset = AdaptMarshaller.AdaptPreset.LIGHT_OFF;
                this.f19418a.z(new AdaptShoeColor(adaptPreset, adaptPreset, null, 4, null));
                this.f19418a.t();
                bVar2.f19427d = true;
                bVar2.f19428e = true;
            }
        }
        a aVar2 = this.f19418a;
        int iA2 = q.g.a(bVar.f19424a);
        if (iA2 != 1 && iA2 != 4) {
            z10 = true;
        }
        aVar2.y(z10);
        Job job = this.f19423f;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, null, 1, null);
        }
        this.f19423f = BuildersKt__Builders_commonKt.launch$default(this.f19419b, null, null, new c(null), 3, null);
    }
}
