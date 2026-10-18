package com.nike.authcomponent.oidc.internal.nativeoidc.webservice.impl;

import kotlinx.serialization.json.JsonBuilder;
import p4.h;
import qd.l;
import rd.o;

/* JADX INFO: compiled from: OIDCAuthWebServiceFactoryImpl.kt */
/* JADX INFO: loaded from: classes.dex */
public final class OIDCAuthWebServiceFactoryImpl$json$1 extends o implements l<JsonBuilder, fd.o> {
    public static final OIDCAuthWebServiceFactoryImpl$json$1 INSTANCE = new OIDCAuthWebServiceFactoryImpl$json$1();

    public OIDCAuthWebServiceFactoryImpl$json$1() {
        super(1);
    }

    @Override // qd.l
    public /* bridge */ /* synthetic */ fd.o invoke(JsonBuilder jsonBuilder) {
        invoke2(jsonBuilder);
        return fd.o.f7408a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(JsonBuilder jsonBuilder) {
        h.j(jsonBuilder, "$this$Json");
        jsonBuilder.setLenient(true);
        jsonBuilder.setIgnoreUnknownKeys(true);
    }
}
