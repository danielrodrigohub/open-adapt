package com.newrelic.agent.android.payload;

import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
class PayloadReaper implements Callable<PayloadSender> {
    public final PayloadSender.CompletionHandler handler;
    public final PayloadSender sender;

    public PayloadReaper(PayloadSender payloadSender, PayloadSender.CompletionHandler completionHandler) {
        Objects.requireNonNull(payloadSender, "Must provide payload sender!");
        this.sender = payloadSender;
        this.handler = completionHandler;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PayloadReaper) {
            return this.sender.payload.equals(((PayloadReaper) obj).sender.payload);
        }
        return false;
    }

    public String getUuid() {
        return this.sender.getPayload().getUuid();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public PayloadSender call() throws Exception {
        try {
            PayloadSender payloadSenderCall = this.sender.call();
            PayloadSender.CompletionHandler completionHandler = this.handler;
            if (completionHandler != null) {
                completionHandler.onResponse(payloadSenderCall);
            }
            return payloadSenderCall;
        } catch (Exception e10) {
            PayloadSender.CompletionHandler completionHandler2 = this.handler;
            if (completionHandler2 == null) {
                return null;
            }
            completionHandler2.onException(this.sender, e10);
            return null;
        }
    }
}
