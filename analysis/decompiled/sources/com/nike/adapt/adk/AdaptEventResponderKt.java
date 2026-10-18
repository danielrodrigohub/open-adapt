package com.nike.adapt.adk;

import i8.d;
import p4.h;

/* JADX INFO: compiled from: AdaptEventResponder.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AdaptEventResponderKt {
    public static final boolean block(DeviceControllerResult deviceControllerResult, d dVar) {
        h.j(deviceControllerResult, "<this>");
        h.j(dVar, "reqId");
        return block(dVar, deviceControllerResult.getEventUUID());
    }

    public static final boolean block(AdaptConnectionStatusResult adaptConnectionStatusResult, d dVar) {
        h.j(adaptConnectionStatusResult, "<this>");
        h.j(dVar, "reqId");
        return block(dVar, adaptConnectionStatusResult.getEventUUID());
    }

    public static final boolean block(DeviceControllerErrorResult deviceControllerErrorResult, d dVar) {
        h.j(deviceControllerErrorResult, "<this>");
        h.j(dVar, "reqId");
        return block(dVar, deviceControllerErrorResult.getEventUUID());
    }

    private static final boolean block(d dVar, d dVar2) {
        return (w7.d.a() || h.c(dVar.f8823i, dVar2.f8823i)) ? false : true;
    }
}
