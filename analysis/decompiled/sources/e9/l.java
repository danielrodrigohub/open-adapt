package e9;

import android.view.ViewTreeObserver;
import java.util.Objects;

/* JADX INFO: compiled from: ModesSelectionAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class l implements ViewTreeObserver.OnGlobalLayoutListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ i.e f6601h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ i f6602i;

    public l(i.e eVar, i iVar) {
        this.f6601h = eVar;
        this.f6602i = iVar;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        this.f6601h.f6593u.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        i iVar = this.f6602i;
        i.e eVar = this.f6601h;
        Objects.requireNonNull(iVar);
        eVar.C.setText(eVar.f6597y.getLayout().getText());
        int[] iArr = new int[2];
        eVar.f6596x.getLocationOnScreen(iArr);
        int[] iArr2 = new int[2];
        eVar.f6598z.getLocationOnScreen(iArr2);
        if (iArr[0] == 0 && iArr[1] == 0) {
            return;
        }
        if (iArr2[0] == 0 && iArr2[1] == 0) {
            return;
        }
        if (!p4.h.c(eVar.f6597y.getLayout().getText(), eVar.f6597y.getText())) {
            eVar.C.getLayoutParams().width = eVar.f6597y.getWidth();
        } else {
            eVar.B.getLayoutParams().width = iArr2[0] - (eVar.f6596x.getWidth() + iArr[0]);
        }
    }
}
