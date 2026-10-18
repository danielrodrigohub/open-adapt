package com.nike.adapt.network.dataopt.datastream;

import a8.f;
import a8.i;
import a8.j;
import jd.d;
import retrofit2.http.Body;
import retrofit2.http.Headers;
import retrofit2.http.POST;

/* JADX INFO: compiled from: NspStreamServiceApi.kt */
/* JADX INFO: loaded from: classes.dex */
public interface NspStreamServiceApi {
    @Headers({"Accept:application/json; charset=utf-8", "Accept-Charset:utf-8", "x-nike-ux-id:com.nike.bigfoot.droid"})
    @POST("adapt-get-stats_events_aOS/main/")
    Object sendStatsLeft(@Body i iVar, d<? super f> dVar);

    @Headers({"Accept:application/json; charset=utf-8", "Accept-Charset:utf-8", "x-nike-ux-id:com.nike.bigfoot.droid"})
    @POST("adapt-get-stats_events_aOS/main/")
    Object sendStatsRight(@Body j jVar, d<? super f> dVar);
}
