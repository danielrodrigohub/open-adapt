package com.newrelic.agent.android.instrumentation.retrofit;

import a0.b;
import com.newrelic.agent.android.instrumentation.io.CountingInputStream;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import retrofit.mime.TypedInput;

/* JADX INFO: loaded from: classes.dex */
public class ContentBufferingTypedInput implements TypedInput {
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private TypedInput impl;
    private CountingInputStream inputStream;

    public ContentBufferingTypedInput(TypedInput typedInput) {
        throw null;
    }

    private void prepareInputStream() throws IOException {
        if (this.inputStream == null) {
            try {
                InputStream inputStreamIn = this.impl.in();
                if (inputStreamIn == null) {
                    inputStreamIn = new ByteArrayInputStream(new byte[0]);
                }
                this.inputStream = new CountingInputStream(inputStreamIn, true);
            } catch (Exception e10) {
                AgentLog agentLog = log;
                StringBuilder sbC = b.c("ContentBufferingTypedInput: ");
                sbC.append(e10.toString());
                agentLog.error(sbC.toString());
            }
        }
    }

    public InputStream in() throws IOException {
        prepareInputStream();
        return this.inputStream;
    }

    public long length() {
        try {
            prepareInputStream();
            return this.inputStream.available();
        } catch (IOException e10) {
            log.error("ContentBufferingTypedInput generated an IO exception: ", e10);
            return -1L;
        }
    }

    public String mimeType() {
        return this.impl.mimeType();
    }
}
