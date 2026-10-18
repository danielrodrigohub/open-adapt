package com.newrelic.agent.android.instrumentation.okhttp3;

import com.newrelic.agent.android.TaskQueue;
import com.newrelic.agent.android.api.common.TransactionData;
import com.newrelic.agent.android.instrumentation.TransactionState;
import com.newrelic.agent.android.instrumentation.TransactionStateUtil;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.measurement.http.HttpTransactionMeasurement;
import de.k0;
import java.io.IOException;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: loaded from: classes.dex */
public class CallExtension implements Call {
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private OkHttpClient client;
    public Call impl;
    public Request request;
    private TransactionState transactionState;

    public CallExtension(OkHttpClient okHttpClient, Request request, Call call, TransactionState transactionState) {
        this.client = okHttpClient;
        this.request = request;
        this.impl = call;
        this.transactionState = transactionState;
    }

    private Response checkResponse(Response response) {
        if (getTransactionState().isComplete()) {
            return response;
        }
        if (response.request() != null) {
            OkHttp3TransactionStateUtil.inspectAndInstrument(this.transactionState, response.request());
        }
        return OkHttp3TransactionStateUtil.inspectAndInstrumentResponse(getTransactionState(), response);
    }

    @Override // okhttp3.Call
    public void cancel() {
        this.impl.cancel();
    }

    @Override // okhttp3.Call
    public void enqueue(Callback callback) {
        getTransactionState();
        this.impl.enqueue(new CallbackExtension(callback, this.transactionState, this));
    }

    public void error(Exception exc) {
        TransactionData transactionDataEnd;
        TransactionState transactionState = getTransactionState();
        TransactionStateUtil.setErrorCodeFromException(transactionState, exc);
        if (transactionState.isComplete() || (transactionDataEnd = transactionState.end()) == null) {
            return;
        }
        transactionDataEnd.setResponseBody(exc.toString());
        TaskQueue.queue(new HttpTransactionMeasurement(transactionDataEnd));
    }

    @Override // okhttp3.Call
    public Response execute() throws IOException {
        getTransactionState();
        try {
            return checkResponse(this.impl.execute());
        } catch (IOException e10) {
            error(e10);
            throw e10;
        }
    }

    public Call getImpl() {
        return this.impl;
    }

    public TransactionState getTransactionState() {
        if (this.transactionState == null) {
            this.transactionState = new TransactionState();
        }
        OkHttp3TransactionStateUtil.inspectAndInstrument(this.transactionState, this.request);
        return this.transactionState;
    }

    @Override // okhttp3.Call
    public boolean isCanceled() {
        return this.impl.isCanceled();
    }

    @Override // okhttp3.Call
    public boolean isExecuted() {
        return false;
    }

    @Override // okhttp3.Call
    public Request request() {
        return this.impl.request();
    }

    @Override // okhttp3.Call
    public k0 timeout() {
        return this.impl.timeout();
    }

    @Override // okhttp3.Call
    public Call clone() {
        return this.impl.clone();
    }
}
