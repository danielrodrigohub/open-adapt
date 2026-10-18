package com.newrelic.agent.android.harvest;

import okhttp3.internal.http.HttpStatusCodesKt;

/* JADX INFO: loaded from: classes.dex */
public class HarvestResponse {
    private static final String DISABLE_STRING = "DISABLE_NEW_RELIC";
    private String responseBody;
    private long responseTime;
    private int statusCode;

    /* JADX INFO: renamed from: com.newrelic.agent.android.harvest.HarvestResponse$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$newrelic$agent$android$harvest$HarvestResponse$Code;

        static {
            int[] iArr = new int[Code.values().length];
            $SwitchMap$com$newrelic$agent$android$harvest$HarvestResponse$Code = iArr;
            try {
                iArr[Code.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$newrelic$agent$android$harvest$HarvestResponse$Code[Code.ACCEPTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum Code {
        OK(HttpStatusCodesKt.HTTP_OK),
        ACCEPTED(HttpStatusCodesKt.HTTP_ACCEPTED),
        UNAUTHORIZED(HttpStatusCodesKt.HTTP_UNAUTHORIZED),
        FORBIDDEN(HttpStatusCodesKt.HTTP_FORBIDDEN),
        REQUEST_TIMEOUT(HttpStatusCodesKt.HTTP_CLIENT_TIMEOUT),
        ENTITY_TOO_LARGE(HttpStatusCodesKt.HTTP_REQUEST_TOO_LONG),
        UNSUPPORTED_MEDIA_TYPE(HttpStatusCodesKt.HTTP_UNSUPPORTED_MEDIA_TYPE),
        TOO_MANY_REQUESTS(HttpStatusCodesKt.HTTP_TOO_MANY_REQUESTS),
        INVALID_AGENT_ID(450),
        INTERNAL_SERVER_ERROR(HttpStatusCodesKt.HTTP_INTERNAL_SERVER_ERROR),
        UNKNOWN(-1);

        public int statusCode;

        Code(int i10) {
            this.statusCode = i10;
        }

        public int getStatusCode() {
            return this.statusCode;
        }

        public boolean isError() {
            return !isOK();
        }

        public boolean isOK() {
            int i10 = AnonymousClass1.$SwitchMap$com$newrelic$agent$android$harvest$HarvestResponse$Code[ordinal()];
            return i10 == 1 || i10 == 2;
        }
    }

    public String getResponseBody() {
        return this.responseBody;
    }

    public Code getResponseCode() {
        for (Code code : Code.values()) {
            if (code.getStatusCode() == this.statusCode) {
                return code;
            }
        }
        return Code.UNKNOWN;
    }

    public long getResponseTime() {
        return this.responseTime;
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public boolean isDisableCommand() {
        return Code.FORBIDDEN == getResponseCode() && DISABLE_STRING.equals(getResponseBody());
    }

    public boolean isError() {
        return this.statusCode >= 400;
    }

    public boolean isOK() {
        int i10 = this.statusCode;
        return i10 == 200 || i10 == 201;
    }

    public boolean isUnknown() {
        return getResponseCode() == Code.UNKNOWN;
    }

    public void setResponseBody(String str) {
        this.responseBody = str;
    }

    public void setResponseTime(long j10) {
        this.responseTime = j10;
    }

    public void setStatusCode(int i10) {
        this.statusCode = i10;
    }
}
