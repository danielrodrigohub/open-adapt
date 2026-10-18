package t;

import androidx.recyclerview.widget.s;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: DependencyNode.java */
/* JADX INFO: loaded from: classes.dex */
public class f implements d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public p f15293d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f15295f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f15296g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public p f15290a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f15291b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f15292c = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f15294e = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f15297h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public g f15298i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f15299j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public List<d> f15300k = new ArrayList();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public List<f> f15301l = new ArrayList();

    public f(p pVar) {
        this.f15293d = pVar;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.util.ArrayList, java.util.List<t.f>] */
    @Override // t.d
    public final void a(d dVar) {
        Iterator it = this.f15301l.iterator();
        while (it.hasNext()) {
            if (!((f) it.next()).f15299j) {
                return;
            }
        }
        this.f15292c = true;
        p pVar = this.f15290a;
        if (pVar != null) {
            pVar.a(this);
        }
        if (this.f15291b) {
            this.f15293d.a(this);
            return;
        }
        f fVar = null;
        int i10 = 0;
        for (f fVar2 : this.f15301l) {
            if (!(fVar2 instanceof g)) {
                i10++;
                fVar = fVar2;
            }
        }
        if (fVar != null && i10 == 1 && fVar.f15299j) {
            g gVar = this.f15298i;
            if (gVar != null) {
                if (!gVar.f15299j) {
                    return;
                } else {
                    this.f15295f = this.f15297h * gVar.f15296g;
                }
            }
            d(fVar.f15296g + this.f15295f);
        }
        p pVar2 = this.f15290a;
        if (pVar2 != null) {
            pVar2.a(this);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<t.d>] */
    public final void b(d dVar) {
        this.f15300k.add(dVar);
        if (this.f15299j) {
            dVar.a(dVar);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList, java.util.List<t.d>] */
    public final void c() {
        this.f15301l.clear();
        this.f15300k.clear();
        this.f15299j = false;
        this.f15296g = 0;
        this.f15292c = false;
        this.f15291b = false;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.ArrayList, java.util.List<t.d>] */
    public void d(int i10) {
        if (this.f15299j) {
            return;
        }
        this.f15299j = true;
        this.f15296g = i10;
        for (d dVar : this.f15300k) {
            dVar.a(dVar);
        }
    }

    /* JADX WARN: Type inference failed for: r1v11, types: [java.util.ArrayList, java.util.List<t.f>] */
    /* JADX WARN: Type inference failed for: r1v14, types: [java.util.ArrayList, java.util.List<t.d>] */
    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f15293d.f15316b.f14871j0);
        sb2.append(":");
        sb2.append(s.d(this.f15294e));
        sb2.append("(");
        sb2.append(this.f15299j ? Integer.valueOf(this.f15296g) : "unresolved");
        sb2.append(") <t=");
        sb2.append(this.f15301l.size());
        sb2.append(":d=");
        sb2.append(this.f15300k.size());
        sb2.append(">");
        return sb2.toString();
    }
}
