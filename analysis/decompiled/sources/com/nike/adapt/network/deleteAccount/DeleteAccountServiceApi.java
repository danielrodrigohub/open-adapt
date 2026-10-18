package com.nike.adapt.network.deleteAccount;

import fd.o;
import jd.d;
import retrofit2.Response;
import retrofit2.http.DELETE;
import retrofit2.http.Headers;

/* JADX INFO: compiled from: DeleteAccountServiceApi.kt */
/* JADX INFO: loaded from: classes.dex */
public interface DeleteAccountServiceApi {
    @DELETE("delete/me/v1")
    @Headers({"Accept:application/json; charset=utf-8", "Accept-Charset:utf-8"})
    Object deleteAccount(d<? super Response<o>> dVar);
}
