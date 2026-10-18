package com.newrelic.agent.android.activity;

/* JADX INFO: loaded from: classes.dex */
public class NamedActivity extends BaseMeasuredActivity {
    public NamedActivity(String str) {
        setName(str);
        setAutoInstrumented(false);
    }

    public void rename(String str) {
        setName(str);
    }
}
