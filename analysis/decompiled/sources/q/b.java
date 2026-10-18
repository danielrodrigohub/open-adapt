package q;

import com.newrelic.agent.android.AgentConfiguration;
import java.util.ArrayList;

/* JADX INFO: compiled from: ArrayRow.java */
/* JADX INFO: loaded from: classes.dex */
public class b implements d.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public a f13453d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public h f13450a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f13451b = 0.0f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ArrayList<h> f13452c = new ArrayList<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f13454e = false;

    /* JADX INFO: compiled from: ArrayRow.java */
    public interface a {
        float a(int i10);

        void b(h hVar, float f10, boolean z10);

        float c(h hVar);

        void clear();

        void d(h hVar, float f10);

        int e();

        float f(b bVar, boolean z10);

        h g(int i10);

        float h(h hVar, boolean z10);

        boolean i(h hVar);

        void j(float f10);

        void k();
    }

    public b() {
    }

    @Override // q.d.a
    public h a(boolean[] zArr) {
        return h(zArr, null);
    }

    public final b b(d dVar, int i10) {
        this.f13453d.d(dVar.k(i10, "ep"), 1.0f);
        this.f13453d.d(dVar.k(i10, "em"), -1.0f);
        return this;
    }

    public final b c(h hVar, h hVar2, h hVar3, h hVar4, float f10) {
        this.f13453d.d(hVar, -1.0f);
        this.f13453d.d(hVar2, 1.0f);
        this.f13453d.d(hVar3, f10);
        this.f13453d.d(hVar4, -f10);
        return this;
    }

    public final b d(h hVar, h hVar2, h hVar3, int i10) {
        boolean z10 = false;
        if (i10 != 0) {
            if (i10 < 0) {
                i10 *= -1;
                z10 = true;
            }
            this.f13451b = i10;
        }
        if (z10) {
            this.f13453d.d(hVar, 1.0f);
            this.f13453d.d(hVar2, -1.0f);
            this.f13453d.d(hVar3, -1.0f);
        } else {
            this.f13453d.d(hVar, -1.0f);
            this.f13453d.d(hVar2, 1.0f);
            this.f13453d.d(hVar3, 1.0f);
        }
        return this;
    }

    public final b e(h hVar, h hVar2, h hVar3, int i10) {
        boolean z10 = false;
        if (i10 != 0) {
            if (i10 < 0) {
                i10 *= -1;
                z10 = true;
            }
            this.f13451b = i10;
        }
        if (z10) {
            this.f13453d.d(hVar, 1.0f);
            this.f13453d.d(hVar2, -1.0f);
            this.f13453d.d(hVar3, 1.0f);
        } else {
            this.f13453d.d(hVar, -1.0f);
            this.f13453d.d(hVar2, 1.0f);
            this.f13453d.d(hVar3, -1.0f);
        }
        return this;
    }

    public final b f(h hVar, h hVar2, h hVar3, h hVar4, float f10) {
        this.f13453d.d(hVar3, 0.5f);
        this.f13453d.d(hVar4, 0.5f);
        this.f13453d.d(hVar, -0.5f);
        this.f13453d.d(hVar2, -0.5f);
        this.f13451b = -f10;
        return this;
    }

    public boolean g() {
        return this.f13450a == null && this.f13451b == 0.0f && this.f13453d.e() == 0;
    }

    public final h h(boolean[] zArr, h hVar) {
        int i10;
        int iE = this.f13453d.e();
        h hVar2 = null;
        float f10 = 0.0f;
        for (int i11 = 0; i11 < iE; i11++) {
            float fA = this.f13453d.a(i11);
            if (fA < 0.0f) {
                h hVarG = this.f13453d.g(i11);
                if ((zArr == null || !zArr[hVarG.f13486i]) && hVarG != hVar && (((i10 = hVarG.f13493p) == 3 || i10 == 4) && fA < f10)) {
                    f10 = fA;
                    hVar2 = hVarG;
                }
            }
        }
        return hVar2;
    }

    public final void i(h hVar) {
        h hVar2 = this.f13450a;
        if (hVar2 != null) {
            this.f13453d.d(hVar2, -1.0f);
            this.f13450a.f13487j = -1;
            this.f13450a = null;
        }
        float fH = this.f13453d.h(hVar, true) * (-1.0f);
        this.f13450a = hVar;
        if (fH == 1.0f) {
            return;
        }
        this.f13451b /= fH;
        this.f13453d.j(fH);
    }

    public final void j(d dVar, h hVar, boolean z10) {
        if (hVar == null || !hVar.f13490m) {
            return;
        }
        float fC = this.f13453d.c(hVar);
        this.f13451b = (hVar.f13489l * fC) + this.f13451b;
        this.f13453d.h(hVar, z10);
        if (z10) {
            hVar.g(this);
        }
        if (this.f13453d.e() == 0) {
            this.f13454e = true;
            dVar.f13461a = true;
        }
    }

    public void k(d dVar, b bVar, boolean z10) {
        float f10 = this.f13453d.f(bVar, z10);
        this.f13451b = (bVar.f13451b * f10) + this.f13451b;
        if (z10) {
            bVar.f13450a.g(this);
        }
        if (this.f13450a == null || this.f13453d.e() != 0) {
            return;
        }
        this.f13454e = true;
        dVar.f13461a = true;
    }

    public String toString() {
        String string;
        boolean z10;
        if (this.f13450a == null) {
            string = AgentConfiguration.DEFAULT_DEVICE_UUID;
        } else {
            StringBuilder sbC = a0.b.c("");
            sbC.append(this.f13450a);
            string = sbC.toString();
        }
        String strC = androidx.recyclerview.widget.d.c(string, " = ");
        if (this.f13451b != 0.0f) {
            StringBuilder sbC2 = a0.b.c(strC);
            sbC2.append(this.f13451b);
            strC = sbC2.toString();
            z10 = true;
        } else {
            z10 = false;
        }
        int iE = this.f13453d.e();
        for (int i10 = 0; i10 < iE; i10++) {
            h hVarG = this.f13453d.g(i10);
            if (hVarG != null) {
                float fA = this.f13453d.a(i10);
                if (fA != 0.0f) {
                    String string2 = hVarG.toString();
                    if (z10) {
                        if (fA > 0.0f) {
                            strC = androidx.recyclerview.widget.d.c(strC, " + ");
                        } else {
                            strC = androidx.recyclerview.widget.d.c(strC, " - ");
                            fA *= -1.0f;
                        }
                    } else if (fA < 0.0f) {
                        strC = androidx.recyclerview.widget.d.c(strC, "- ");
                        fA *= -1.0f;
                    }
                    strC = fA == 1.0f ? androidx.recyclerview.widget.d.c(strC, string2) : strC + fA + " " + string2;
                    z10 = true;
                }
            }
        }
        return !z10 ? androidx.recyclerview.widget.d.c(strC, "0.0") : strC;
    }

    public b(c cVar) {
        this.f13453d = new q.a(this, cVar);
    }
}
