package com.newrelic.agent.android.hybrid;

import com.newrelic.agent.android.hybrid.rninterface.IStack;
import com.newrelic.agent.android.hybrid.rninterface.IStackFrame;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class Stack implements IStack {

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private final String f5632id = UUID.randomUUID().toString();
    private StackFrame[] stackFrames;

    public Stack(StackFrame[] stackFrameArr) {
        this.stackFrames = stackFrameArr;
    }

    @Override // com.newrelic.agent.android.hybrid.rninterface.IStack
    public String getId() {
        return this.f5632id;
    }

    @Override // com.newrelic.agent.android.hybrid.rninterface.IStack
    public IStackFrame[] getStackFrames() {
        return this.stackFrames;
    }

    @Override // com.newrelic.agent.android.hybrid.rninterface.IStack
    public boolean isThrowingThread() {
        return true;
    }
}
