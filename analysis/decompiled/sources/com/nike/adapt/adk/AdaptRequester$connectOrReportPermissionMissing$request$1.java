package com.nike.adapt.adk;

import androidx.lifecycle.i;
import p4.h;
import qd.l;
import rd.o;
import v9.l0;

/* JADX INFO: compiled from: AdaptRequester.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AdaptRequester$connectOrReportPermissionMissing$request$1 extends o implements l<l0, fd.o> {
    public final /* synthetic */ AdaptRequester this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdaptRequester$connectOrReportPermissionMissing$request$1(AdaptRequester adaptRequester) {
        super(1);
        this.this$0 = adaptRequester;
    }

    @Override // qd.l
    public /* bridge */ /* synthetic */ fd.o invoke(l0 l0Var) {
        invoke2(l0Var);
        return fd.o.f7408a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(l0 l0Var) {
        h.j(l0Var, "$this$$receiver");
        i iVar = this.this$0.lifecycle;
        if (iVar != null) {
            AdaptRequester adaptRequester = this.this$0;
            if (iVar.b().b(i.c.RESUMED)) {
                l<String[], fd.o> permissionsRequired = adaptRequester.getPermissionsRequired();
                Object[] array = l0Var.f16692j.toArray(new String[0]);
                h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                permissionsRequired.invoke(array);
            }
        }
    }
}
