package s;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import t.o;

/* JADX INFO: compiled from: ConstraintAnchor.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f14836b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f14837c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final d f14838d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final a f14839e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public c f14840f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public q.h f14843i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public HashSet<c> f14835a = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f14841g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f14842h = Integer.MIN_VALUE;

    /* JADX INFO: compiled from: ConstraintAnchor.java */
    public enum a {
        /* JADX INFO: Fake field, exist only in values array */
        NONE,
        LEFT,
        TOP,
        RIGHT,
        BOTTOM,
        BASELINE,
        CENTER,
        CENTER_X,
        CENTER_Y
    }

    public c(d dVar, a aVar) {
        this.f14838d = dVar;
        this.f14839e = aVar;
    }

    public final boolean a(c cVar, int i10, int i11) {
        if (cVar == null) {
            h();
            return true;
        }
        this.f14840f = cVar;
        if (cVar.f14835a == null) {
            cVar.f14835a = new HashSet<>();
        }
        HashSet<c> hashSet = this.f14840f.f14835a;
        if (hashSet != null) {
            hashSet.add(this);
        }
        this.f14841g = i10;
        this.f14842h = i11;
        return true;
    }

    public final void b(int i10, ArrayList<o> arrayList, o oVar) {
        HashSet<c> hashSet = this.f14835a;
        if (hashSet != null) {
            Iterator<c> it = hashSet.iterator();
            while (it.hasNext()) {
                t.i.a(it.next().f14838d, i10, arrayList, oVar);
            }
        }
    }

    public final int c() {
        if (this.f14837c) {
            return this.f14836b;
        }
        return 0;
    }

    public final int d() {
        c cVar;
        if (this.f14838d.f14869i0 == 8) {
            return 0;
        }
        int i10 = this.f14842h;
        return (i10 == Integer.MIN_VALUE || (cVar = this.f14840f) == null || cVar.f14838d.f14869i0 != 8) ? this.f14841g : i10;
    }

    public final boolean e() {
        c cVar;
        HashSet<c> hashSet = this.f14835a;
        if (hashSet == null) {
            return false;
        }
        for (c cVar2 : hashSet) {
            switch (cVar2.f14839e) {
                case NONE:
                case BASELINE:
                case CENTER:
                case CENTER_X:
                case CENTER_Y:
                    cVar = null;
                    break;
                case LEFT:
                    cVar = cVar2.f14838d.L;
                    break;
                case TOP:
                    cVar = cVar2.f14838d.M;
                    break;
                case RIGHT:
                    cVar = cVar2.f14838d.J;
                    break;
                case BOTTOM:
                    cVar = cVar2.f14838d.K;
                    break;
                default:
                    throw new AssertionError(cVar2.f14839e.name());
            }
            if (cVar.g()) {
                return true;
            }
        }
        return false;
    }

    public final boolean f() {
        HashSet<c> hashSet = this.f14835a;
        return hashSet != null && hashSet.size() > 0;
    }

    public final boolean g() {
        return this.f14840f != null;
    }

    public final void h() {
        HashSet<c> hashSet;
        c cVar = this.f14840f;
        if (cVar != null && (hashSet = cVar.f14835a) != null) {
            hashSet.remove(this);
            if (this.f14840f.f14835a.size() == 0) {
                this.f14840f.f14835a = null;
            }
        }
        this.f14835a = null;
        this.f14840f = null;
        this.f14841g = 0;
        this.f14842h = Integer.MIN_VALUE;
        this.f14837c = false;
        this.f14836b = 0;
    }

    public final void i() {
        q.h hVar = this.f14843i;
        if (hVar == null) {
            this.f14843i = new q.h(1);
        } else {
            hVar.i();
        }
    }

    public final void j(int i10) {
        this.f14836b = i10;
        this.f14837c = true;
    }

    public final String toString() {
        return this.f14838d.f14871j0 + ":" + this.f14839e.toString();
    }
}
