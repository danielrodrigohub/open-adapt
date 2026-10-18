package x8;

import com.nike.adapt.R;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.Shoe;
import q7.m1;

/* JADX INFO: compiled from: ShoeControllerUiHelper.kt */
/* JADX INFO: loaded from: classes.dex */
public final class n0 extends q0 {
    /* JADX WARN: Illegal instructions before constructor call */
    public n0(IDeviceController iDeviceController, m1 m1Var, q0.a aVar, boolean z10, qd.p pVar, int i10) {
        q0.a aVar2 = (i10 & 4) != 0 ? null : aVar;
        int i11 = (i10 & 8) != 0 ? 2 : 0;
        boolean z11 = (i10 & 16) != 0 ? false : z10;
        qd.p pVar2 = (i10 & 32) != 0 ? m0.f17933h : pVar;
        androidx.appcompat.widget.o.d(i11, "uiState");
        p4.h.j(pVar2, "lacingPosition");
        super(iDeviceController, Shoe.RIGHT, m1Var, aVar2, i11, z11, R.drawable.r, pVar2);
    }
}
