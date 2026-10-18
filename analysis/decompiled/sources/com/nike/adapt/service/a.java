package com.nike.adapt.service;

import rd.o;

/* JADX INFO: compiled from: FirmwareUpdateService.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a extends o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ FirmwareUpdateService f5702h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(FirmwareUpdateService firmwareUpdateService) {
        super(0);
        this.f5702h = firmwareUpdateService;
    }

    @Override // qd.a
    public final fd.o invoke() {
        FirmwareUpdateService firmwareUpdateService = this.f5702h;
        FirmwareUpdateService.a aVar = FirmwareUpdateService.f5688s;
        firmwareUpdateService.f(3);
        return fd.o.f7408a;
    }
}
