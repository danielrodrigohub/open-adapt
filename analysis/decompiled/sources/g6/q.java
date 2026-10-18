package g6;

import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import j0.l0;
import java.util.Objects;

/* JADX INFO: compiled from: ViewUtils.java */
/* JADX INFO: loaded from: classes.dex */
public final class q implements j0.q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ s.a f7776a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s.b f7777b;

    public q(s.a aVar, s.b bVar) {
        this.f7776a = aVar;
        this.f7777b = bVar;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x008c  */
    @Override // j0.q
    public final l0 a(View view, l0 l0Var) {
        s.a aVar = this.f7776a;
        s.b bVar = this.f7777b;
        int i10 = bVar.f7778a;
        int i11 = bVar.f7779b;
        int i12 = bVar.f7780c;
        t5.b bVar2 = (t5.b) aVar;
        Objects.requireNonNull(bVar2);
        a0.c cVarB = l0Var.b(7);
        a0.c cVarB2 = l0Var.b(32);
        bVar2.f15528b.f5061v = cVarB.f6b;
        boolean zB = s.b(view);
        int paddingBottom = view.getPaddingBottom();
        int paddingLeft = view.getPaddingLeft();
        int paddingRight = view.getPaddingRight();
        BottomSheetBehavior bottomSheetBehavior = bVar2.f15528b;
        if (bottomSheetBehavior.f5053n) {
            bottomSheetBehavior.f5060u = l0Var.c();
            paddingBottom = bVar2.f15528b.f5060u + i12;
        }
        BottomSheetBehavior bottomSheetBehavior2 = bVar2.f15528b;
        if (bottomSheetBehavior2.f5054o) {
            paddingLeft = (zB ? i11 : i10) + cVarB.f5a;
        }
        if (bottomSheetBehavior2.f5055p) {
            if (!zB) {
                i10 = i11;
            }
            paddingRight = i10 + cVarB.f7c;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        BottomSheetBehavior bottomSheetBehavior3 = bVar2.f15528b;
        boolean z10 = false;
        boolean z11 = true;
        if (bottomSheetBehavior3.f5057r) {
            int i13 = marginLayoutParams.leftMargin;
            int i14 = cVarB.f5a;
            if (i13 != i14) {
                marginLayoutParams.leftMargin = i14;
                z10 = true;
            }
        }
        if (bottomSheetBehavior3.f5058s) {
            int i15 = marginLayoutParams.rightMargin;
            int i16 = cVarB.f7c;
            if (i15 != i16) {
                marginLayoutParams.rightMargin = i16;
                z10 = true;
            }
        }
        if (bottomSheetBehavior3.f5059t) {
            int i17 = marginLayoutParams.topMargin;
            int i18 = cVarB.f6b;
            if (i17 != i18) {
                marginLayoutParams.topMargin = i18;
            } else {
                z11 = z10;
            }
        } else {
            z11 = z10;
        }
        if (z11) {
            view.setLayoutParams(marginLayoutParams);
        }
        view.setPadding(paddingLeft, view.getPaddingTop(), paddingRight, paddingBottom);
        boolean z12 = bVar2.f15527a;
        if (z12) {
            bVar2.f15528b.f5051l = cVarB2.f8d;
        }
        BottomSheetBehavior bottomSheetBehavior4 = bVar2.f15528b;
        if (bottomSheetBehavior4.f5053n || z12) {
            bottomSheetBehavior4.I();
        }
        return l0Var;
    }
}
