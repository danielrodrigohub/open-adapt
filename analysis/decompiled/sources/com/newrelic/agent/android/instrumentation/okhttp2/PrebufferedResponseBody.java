package com.newrelic.agent.android.instrumentation.okhttp2;

import com.squareup.okhttp.MediaType;
import com.squareup.okhttp.ResponseBody;
import de.f;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class PrebufferedResponseBody extends ResponseBody {
    public ResponseBody impl;
    private f source;

    public PrebufferedResponseBody(ResponseBody responseBody, f fVar) {
        this.impl = responseBody;
        this.source = fVar;
    }

    public void close() throws IOException {
        this.impl.close();
    }

    public long contentLength() {
        try {
            long jContentLength = this.impl.contentLength();
            return ((int) jContentLength) != 0 ? jContentLength : this.source.h().f6199i;
        } catch (IOException unused) {
            return this.source.h().f6199i;
        }
    }

    public MediaType contentType() {
        return this.impl.contentType();
    }

    public f source() {
        return this.source;
    }
}
