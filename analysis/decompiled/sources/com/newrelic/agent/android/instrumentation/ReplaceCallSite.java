package com.newrelic.agent.android.instrumentation;

/* JADX INFO: loaded from: classes.dex */
public @interface ReplaceCallSite {
    boolean isStatic() default false;

    String scope() default "";
}
