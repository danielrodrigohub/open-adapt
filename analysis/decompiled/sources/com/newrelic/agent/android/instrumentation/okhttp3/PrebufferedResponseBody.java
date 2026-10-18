package com.newrelic.agent.android.instrumentation.okhttp3;

import de.c;
import de.f;
import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes.dex */
public class PrebufferedResponseBody extends ResponseBody {
    private final long contentLength;
    private final ResponseBody impl;
    private final f source;

    public PrebufferedResponseBody(ResponseBody responseBody) {
        f fVarSource = responseBody.source();
        if (responseBody.contentLength() == -1) {
            c cVar = new c();
            try {
                fVarSource.E(cVar);
                fVarSource = cVar;
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
        this.impl = responseBody;
        this.source = fVarSource;
        this.contentLength = responseBody.contentLength() >= 0 ? responseBody.contentLength() : fVarSource.h().f6199i;
    }

    @Override // okhttp3.ResponseBody, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.impl.close();
    }

    @Override // okhttp3.ResponseBody
    public long contentLength() {
        long jContentLength = this.impl.contentLength();
        return ((int) jContentLength) != 0 ? jContentLength : this.source.h().f6199i;
    }

    @Override // okhttp3.ResponseBody
    public MediaType contentType() {
        return this.impl.contentType();
    }

    @Override // okhttp3.ResponseBody
    public f source() {
        return this.source;
    }
}
