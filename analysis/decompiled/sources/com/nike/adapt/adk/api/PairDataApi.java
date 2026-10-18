package com.nike.adapt.adk.api;

import ea.m;
import java.util.List;
import jd.d;

/* JADX INFO: compiled from: PairDataApi.kt */
/* JADX INFO: loaded from: classes.dex */
public interface PairDataApi {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* JADX INFO: compiled from: PairDataApi.kt */
    public static final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final PairDataApi get() {
            return PairDataApiImpl.INSTANCE;
        }
    }

    Object retrievePairFromNetwork(d<? super List<m>> dVar);
}
