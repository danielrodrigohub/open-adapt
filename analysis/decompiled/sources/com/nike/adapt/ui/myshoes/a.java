package com.nike.adapt.ui.myshoes;

import rd.o;

/* JADX INFO: compiled from: SelectShoesActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a extends o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ SelectShoesActivity f5819h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(SelectShoesActivity selectShoesActivity) {
        super(0);
        this.f5819h = selectShoesActivity;
    }

    @Override // qd.a
    public final fd.o invoke() {
        this.f5819h.onBackPressed();
        return fd.o.f7408a;
    }
}
