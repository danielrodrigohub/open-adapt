package f9;

import android.os.Bundle;
import androidx.recyclerview.widget.o;
import java.util.List;

/* JADX INFO: compiled from: MyShoesAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j extends o.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public List<f> f7119a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List<f> f7120b;

    public j(List<f> list, List<f> list2) {
        p4.h.j(list2, "oldShoes");
        this.f7119a = list;
        this.f7120b = list2;
    }

    @Override // androidx.recyclerview.widget.o.b
    public final boolean a(int i10, int i11) {
        f fVar = this.f7120b.get(i10);
        f fVar2 = this.f7119a.get(i11);
        return p4.h.c(fVar.f7107a.f6665i, fVar2.f7107a.f6665i) && p4.h.c(fVar.f7107a.f6670n, fVar2.f7107a.f6670n) && fVar.f7108b == fVar2.f7108b && fVar.f7109c == fVar2.f7109c && p4.h.c(fVar.f7110d, fVar2.f7110d);
    }

    @Override // androidx.recyclerview.widget.o.b
    public final boolean b(int i10, int i11) {
        return p4.h.c(this.f7120b.get(i10).f7107a, this.f7119a.get(i11).f7107a);
    }

    @Override // androidx.recyclerview.widget.o.b
    public final Object c(int i10, int i11) {
        f fVar = this.f7120b.get(i10);
        f fVar2 = this.f7119a.get(i11);
        Bundle bundle = new Bundle();
        if (!p4.h.c(fVar.f7107a.f6665i, fVar2.f7107a.f6665i)) {
            bundle.putString("key_bundle_pair_name", fVar2.f7107a.f6665i);
        }
        if (!p4.h.c(fVar.f7107a.f6670n, fVar2.f7107a.f6670n)) {
            bundle.putString("key_bundle_colorway", fVar2.f7107a.f6670n);
        }
        t9.d dVar = fVar.f7108b;
        t9.d dVar2 = fVar2.f7108b;
        if (dVar != dVar2) {
            bundle.putString("key_bundle_left_connection", dVar2.name());
        }
        t9.d dVar3 = fVar.f7109c;
        t9.d dVar4 = fVar2.f7109c;
        if (dVar3 != dVar4) {
            bundle.putString("key_bundle_right_connection", dVar4.name());
        }
        if (fVar.f7110d.b() != fVar2.f7110d.b()) {
            bundle.putInt("key_badge_count", fVar2.f7110d.b());
        }
        return bundle;
    }

    @Override // androidx.recyclerview.widget.o.b
    public final int d() {
        return this.f7119a.size();
    }

    @Override // androidx.recyclerview.widget.o.b
    public final int e() {
        return this.f7120b.size();
    }
}
