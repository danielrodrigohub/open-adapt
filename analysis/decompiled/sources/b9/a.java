package b9;

import android.widget.ImageView;
import com.nike.adapt.adk.Shoe;

/* JADX INFO: compiled from: AnimatingController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Shoe f3576a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageView f3577b;

    public a(Shoe shoe, ImageView imageView) {
        p4.h.j(shoe, "shoe");
        this.f3576a = shoe;
        this.f3577b = imageView;
    }

    public final boolean equals(Object obj) {
        a aVar = obj instanceof a ? (a) obj : null;
        return (aVar != null ? aVar.f3576a : null) == this.f3576a;
    }

    public final int hashCode() {
        return this.f3576a.hashCode();
    }

    public final String toString() {
        return "AnimatingController(shoe=" + this.f3576a + ", shoeController=" + this.f3577b + ")";
    }
}
