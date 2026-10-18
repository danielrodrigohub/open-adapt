package com.newrelic.agent.android.instrumentation;

import com.newrelic.agent.android.TaskQueue;
import com.newrelic.agent.android.api.common.TransactionData;
import com.newrelic.agent.android.measurement.http.HttpTransactionMeasurement;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: loaded from: classes.dex */
public final class URLConnectionInstrumentation {
    private URLConnectionInstrumentation() {
    }

    public static void httpClientError(TransactionState transactionState, Exception exc) {
        if (transactionState.isComplete()) {
            return;
        }
        TransactionStateUtil.setErrorCodeFromException(transactionState, exc);
        TransactionData transactionDataEnd = transactionState.end();
        if (transactionDataEnd != null) {
            transactionDataEnd.setResponseBody(exc.toString());
            TaskQueue.queue(new HttpTransactionMeasurement(transactionDataEnd));
        }
    }

    @WrapReturn(className = "java/net/URL", methodDesc = "()Ljava/net/URLConnection;", methodName = "openConnection")
    public static URLConnection openConnection(URLConnection uRLConnection) {
        if (uRLConnection instanceof HttpsURLConnection) {
            return new HttpsURLConnectionExtension((HttpsURLConnection) uRLConnection);
        }
        return uRLConnection instanceof HttpURLConnection ? new HttpURLConnectionExtension((HttpURLConnection) uRLConnection) : uRLConnection;
    }

    @WrapReturn(className = "java/net/URL", methodDesc = "(Ljava/net/Proxy;)Ljava/net/URLConnection;", methodName = "openConnection")
    public static URLConnection openConnectionWithProxy(URLConnection uRLConnection) {
        if (uRLConnection instanceof HttpsURLConnection) {
            return new HttpsURLConnectionExtension((HttpsURLConnection) uRLConnection);
        }
        return uRLConnection instanceof HttpURLConnection ? new HttpURLConnectionExtension((HttpURLConnection) uRLConnection) : uRLConnection;
    }
}
