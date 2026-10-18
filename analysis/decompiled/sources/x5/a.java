package x5;

import android.widget.CompoundButton;
import com.google.android.material.chip.Chip;
import g6.i;
import java.util.Objects;

/* JADX INFO: compiled from: Chip.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements CompoundButton.OnCheckedChangeListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Chip f17849h;

    public a(Chip chip) {
        this.f17849h = chip;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0020  */
    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
        Chip chip = this.f17849h;
        i.a<Chip> aVar = chip.f5121q;
        if (aVar != null) {
            g6.a aVar2 = (g6.a) aVar;
            Objects.requireNonNull(aVar2);
            if (!z10) {
                g6.b bVar = aVar2.f7702a;
                if (bVar.e(chip, bVar.f7707e)) {
                    aVar2.f7702a.d();
                }
            } else if (aVar2.f7702a.a(chip)) {
                aVar2.f7702a.d();
            }
        }
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener = this.f17849h.f5120p;
        if (onCheckedChangeListener != null) {
            onCheckedChangeListener.onCheckedChanged(compoundButton, z10);
        }
    }
}
